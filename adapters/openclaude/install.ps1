#!/usr/bin/env pwsh
param(
    [string]$TargetPath = (Get-Location).Path,
    [switch]$Global,
    [switch]$Force,
    [switch]$DryRun
)

$RootDir = Split-Path (Split-Path $PSScriptRoot -Parent) -Parent
$SourceDir = Join-Path $RootDir 'adapters/claude'

function Convert-ToOpenClaudeSkill {
    param([string]$SourcePath, [string]$SkillName)

    $raw = Get-Content $SourcePath -Raw
    $description = "Book Kit command /$SkillName"
    $body = $raw
    $match = [regex]::Match($raw, '\A---\s*\r?\n(?<fm>.*?)\r?\n---\s*\r?\n(?<body>.*)\z', [Text.RegularExpressions.RegexOptions]::Singleline)
    if ($match.Success) {
        $body = $match.Groups['body'].Value
        $d = [regex]::Match($match.Groups['fm'].Value, '(?m)^description:\s*(?<d>.+?)\s*$')
        if ($d.Success) {
            $description = $d.Groups['d'].Value.Trim().Trim('"').Trim("'")
        }
    }
    $safe = $description.Replace('\','\\').Replace('"','\"')
    @"
---
name: $SkillName
description: "$safe"
argument-hint: "[arguments]"
user-invocable: true
---

$body
"@
}

function Install-Skills([string]$SkillsRoot) {
    $commands = Get-ChildItem $SourceDir -Filter 'bookkit.*.md' | Sort-Object Name
    foreach ($command in $commands) {
        $skillName = [IO.Path]::GetFileNameWithoutExtension($command.Name)
        $destDir = Join-Path $SkillsRoot $skillName
        $dest = Join-Path $destDir 'SKILL.md'
        if ($DryRun) { Write-Host "  [dry-run] $($command.FullName) -> $dest"; continue }
        if ((Test-Path $dest) -and -not $Force) { Write-Host "  [skip] $dest"; continue }
        New-Item -ItemType Directory -Force -Path $destDir | Out-Null
        Convert-ToOpenClaudeSkill $command.FullName $skillName | Set-Content $dest -Encoding utf8
        Write-Host "  [ok] $dest"
    }
}

$projectRoot = Join-Path $TargetPath '.openclaude/skills'
Write-Host "Installing Book Kit OpenClaude skills to $projectRoot"
Install-Skills $projectRoot

if ($Global) {
    $configRoot = if ($env:OPENCLAUDE_CONFIG_DIR) { $env:OPENCLAUDE_CONFIG_DIR } else { Join-Path ([Environment]::GetFolderPath('UserProfile')) '.openclaude' }
    $globalRoot = Join-Path $configRoot 'skills'
    Write-Host "Installing global Book Kit OpenClaude skills to $globalRoot"
    Install-Skills $globalRoot
}

Write-Host "Book Kit OpenClaude skills installed. Invoke with /bookkit.{command}."
