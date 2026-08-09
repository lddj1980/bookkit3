param([string]$RepoRoot = (Split-Path $PSScriptRoot -Parent))

$failed = 0
$passed = 0
function Assert-True([bool]$Condition, [string]$Message) {
    if ($Condition) { Write-Host "[PASS] $Message"; $script:passed++ }
    else { Write-Host "[FAIL] $Message"; $script:failed++ }
}

$adapter = Join-Path $RepoRoot 'adapters/openclaude/install.ps1'
Assert-True (Test-Path $adapter) 'OpenClaude PowerShell adapter exists'
Assert-True (Test-Path (Join-Path $RepoRoot 'adapters/openclaude/install.sh')) 'OpenClaude shell adapter exists'

$tmp = Join-Path ([IO.Path]::GetTempPath()) "bookkit-openclaude-$([Guid]::NewGuid().ToString('N'))"
New-Item -ItemType Directory -Path $tmp -Force | Out-Null
try {
    & $adapter -TargetPath $tmp -Force
    $sourceCount = (Get-ChildItem (Join-Path $RepoRoot 'adapters/claude') -Filter 'bookkit.*.md').Count
    $skillDirs = Get-ChildItem (Join-Path $tmp '.openclaude/skills') -Directory
    Assert-True ($skillDirs.Count -eq $sourceCount) 'all Book Kit commands become OpenClaude skills'

    $brief = Join-Path $tmp '.openclaude/skills/bookkit.brief/SKILL.md'
    Assert-True (Test-Path $brief) 'bookkit.brief/SKILL.md is generated'
    if (Test-Path $brief) {
        $content = Get-Content $brief -Raw
        Assert-True ($content.Contains('name: bookkit.brief')) 'skill preserves slash-command name'
        Assert-True ($content.Contains('user-invocable: true')) 'skill is user invocable'
        Assert-True ($content.Contains('$ARGUMENTS')) 'skill preserves arguments placeholder'
        Assert-True (-not $content.Contains('handoffs:')) 'Claude-only frontmatter is not propagated'
    }
} finally {
    Remove-Item -Recurse -Force $tmp -ErrorAction SilentlyContinue
}

$tmpProject = Join-Path ([IO.Path]::GetTempPath()) "bookkit-openclaude-project-$([Guid]::NewGuid().ToString('N'))"
$tmpConfig = Join-Path ([IO.Path]::GetTempPath()) "bookkit-openclaude-config-$([Guid]::NewGuid().ToString('N'))"
New-Item -ItemType Directory -Path $tmpProject,$tmpConfig -Force | Out-Null
$oldConfig = $env:OPENCLAUDE_CONFIG_DIR
try {
    $env:OPENCLAUDE_CONFIG_DIR = $tmpConfig
    & $adapter -TargetPath $tmpProject -Global -Force
    Assert-True (Test-Path (Join-Path $tmpConfig 'skills/bookkit.brief/SKILL.md')) 'global install honors OPENCLAUDE_CONFIG_DIR'
} finally {
    $env:OPENCLAUDE_CONFIG_DIR = $oldConfig
    Remove-Item -Recurse -Force $tmpProject,$tmpConfig -ErrorAction SilentlyContinue
}

Write-Host "$passed passed, $failed failed"
if ($failed -gt 0) { exit 1 }
