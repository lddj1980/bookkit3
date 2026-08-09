@echo off
chcp 65001 >nul 2>&1
setlocal EnableDelayedExpansion

REM Book Kit v3 - setup.bat (Windows)
REM Uso: setup.bat [--tool <key>] [--all] [--target C:\projeto] [--global] [--install-global]

set "SCRIPT_DIR=%~dp0"
set "TARGET_DIR=%CD%"
set "TOOL_LIST="
set "INSTALL_ALL=0"
set "SHOW_HELP=0"
set "INSTALL_GLOBAL=0"
set "OPENCLAUDE_GLOBAL=0"

:parse_args
if "%~1"=="" goto after_args
if /i "%~1"=="--help"           set "SHOW_HELP=1" & shift & goto parse_args
if /i "%~1"=="-h"               set "SHOW_HELP=1" & shift & goto parse_args
if /i "%~1"=="--all"            set "INSTALL_ALL=1" & shift & goto parse_args
if /i "%~1"=="--global"         set "OPENCLAUDE_GLOBAL=1" & shift & goto parse_args
if /i "%~1"=="--install-global" set "INSTALL_GLOBAL=1" & shift & goto parse_args
if /i "%~1"=="--tool"           set "TOOL_LIST=%TOOL_LIST% %~2" & shift & shift & goto parse_args
if /i "%~1"=="--target"         set "TARGET_DIR=%~2" & shift & shift & goto parse_args
shift
goto parse_args

:after_args
if "%SHOW_HELP%"=="1" goto show_help
goto skip_help

:show_help
echo.
echo   Book Kit v3 - Instalador Windows
echo   ===================================
echo.
echo   setup.bat --tool claude
echo   setup.bat --tool openclaude
echo   setup.bat --tool openclaude --global
echo   setup.bat --all --target C:\projeto
echo   setup.bat --install-global
echo.
echo   Ferramentas:
echo     claude      .claude\commands\
echo     openclaude  .openclaude\skills\bookkit.*\SKILL.md  [native]
echo     codex       .agents\skills\bookkit\
echo     kimi        .kimi\commands\
echo     opencode    .opencode\commands\
echo     agy         .agy\skills\bookkit\
echo     cursor      .cursor\rules\
echo     windsurf    .windsurf\rules\
echo     copilot     .github\
echo     gemini      .gemini\commands\
goto end

:skip_help
if "%INSTALL_GLOBAL%"=="1" call :install_bookkit_global
if "%TOOL_LIST%"=="" if "%INSTALL_ALL%"=="0" if "%INSTALL_GLOBAL%"=="1" goto end

if not "%TOOL_LIST%"=="" goto skip_interactive
if not "%INSTALL_ALL%"=="0" goto skip_interactive

echo.
echo   Book Kit v3 - Qual ferramenta voce esta usando?
echo   ==================================================
echo   1) claude
echo   2) openclaude [native]
echo   3) codex
echo   4) kimi
echo   5) opencode
echo   6) agy
echo   7) cursor
echo   8) windsurf
echo   9) copilot
echo  10) gemini
echo  11) Todas
echo.
set /p "CHOICES=Escolha: "
for %%C in (%CHOICES%) do (
    if "%%C"=="1" set "TOOL_LIST=!TOOL_LIST! claude"
    if "%%C"=="2" set "TOOL_LIST=!TOOL_LIST! openclaude"
    if "%%C"=="3" set "TOOL_LIST=!TOOL_LIST! codex"
    if "%%C"=="4" set "TOOL_LIST=!TOOL_LIST! kimi"
    if "%%C"=="5" set "TOOL_LIST=!TOOL_LIST! opencode"
    if "%%C"=="6" set "TOOL_LIST=!TOOL_LIST! agy"
    if "%%C"=="7" set "TOOL_LIST=!TOOL_LIST! cursor"
    if "%%C"=="8" set "TOOL_LIST=!TOOL_LIST! windsurf"
    if "%%C"=="9" set "TOOL_LIST=!TOOL_LIST! copilot"
    if "%%C"=="10" set "TOOL_LIST=!TOOL_LIST! gemini"
    if "%%C"=="11" set "INSTALL_ALL=1"
)

:skip_interactive
if "%INSTALL_ALL%"=="1" set "TOOL_LIST=claude openclaude codex kimi opencode agy cursor windsurf copilot gemini"

if not exist "%TARGET_DIR%\bookkit\chapters\" mkdir "%TARGET_DIR%\bookkit\chapters"
set "ERRORS=0"

echo.
echo   Instalando Book Kit v3 em: %TARGET_DIR%
echo   Ferramentas: %TOOL_LIST%
echo.

for %%T in (%TOOL_LIST%) do call :install_tool %%T

if exist "%SCRIPT_DIR%templates\" xcopy /Y /Q "%SCRIPT_DIR%templates\*.md" "%TARGET_DIR%\bookkit\" >nul 2>&1

echo.
if "%ERRORS%"=="0" (echo   OK  Book Kit v3 instalado com sucesso.) else (echo   AVISO  Algumas instalacoes tiveram problemas.)
goto end

:install_tool
set "TOOL=%~1"
if /i "%TOOL%"=="openclaude" goto install_openclaude
set "SRC=%SCRIPT_DIR%adapters\%TOOL%"
set "DEST="
if /i "%TOOL%"=="claude"   set "DEST=%TARGET_DIR%\.claude\commands"
if /i "%TOOL%"=="codex"    set "DEST=%TARGET_DIR%\.agents\skills\bookkit"
if /i "%TOOL%"=="kimi"     set "DEST=%TARGET_DIR%\.kimi\commands"
if /i "%TOOL%"=="opencode" set "DEST=%TARGET_DIR%\.opencode\commands"
if /i "%TOOL%"=="agy"      set "DEST=%TARGET_DIR%\.agy\skills\bookkit"
if /i "%TOOL%"=="cursor"   set "DEST=%TARGET_DIR%\.cursor\rules"
if /i "%TOOL%"=="windsurf" set "DEST=%TARGET_DIR%\.windsurf\rules"
if /i "%TOOL%"=="copilot"  set "DEST=%TARGET_DIR%\.github"
if /i "%TOOL%"=="gemini"   set "DEST=%TARGET_DIR%\.gemini\commands"
if "%DEST%"=="" (
  echo   [ERRO] Ferramenta desconhecida: %TOOL%
  set /a ERRORS+=1
  goto :eof
)
if not exist "%SRC%\" (
  echo   [ERRO] Adapter nao encontrado: %SRC%
  set /a ERRORS+=1
  goto :eof
)
if not exist "%DEST%\" mkdir "%DEST%"
xcopy /Y /Q "%SRC%\bookkit.*" "%DEST%\" >nul 2>&1
xcopy /Y /Q "%SRC%\bookkit-*" "%DEST%\" >nul 2>&1
echo   OK  %TOOL%  ^>^>  %DEST%\
goto :eof

:install_openclaude
if "%OPENCLAUDE_GLOBAL%"=="1" (
  powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%adapters\openclaude\install.ps1" -TargetPath "%TARGET_DIR%" -Force -Global
) else (
  powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%adapters\openclaude\install.ps1" -TargetPath "%TARGET_DIR%" -Force
)
if errorlevel 1 (
  echo   [ERRO] Falha na instalacao OpenClaude
  set /a ERRORS+=1
) else (
  echo   OK  openclaude ^>^> .openclaude\skills\bookkit.*\SKILL.md
)
goto :eof

:install_bookkit_global
set "GLOBAL_DIR=%USERPROFILE%\.bookkit"
echo.
echo   Book Kit v3 - Instalacao Global do instalador
echo   Destino: %GLOBAL_DIR%
if not exist "%GLOBAL_DIR%\" mkdir "%GLOBAL_DIR%"
xcopy /E /Y /Q "%SCRIPT_DIR%." "%GLOBAL_DIR%\" >nul 2>&1
powershell -NoProfile -Command "$p=[Environment]::GetEnvironmentVariable('PATH','User'); if($p -notlike '*\.bookkit*'){[Environment]::SetEnvironmentVariable('PATH',$p+';%GLOBAL_DIR%','User')}"
echo @echo off > "%GLOBAL_DIR%\bk.bat"
echo call "%GLOBAL_DIR%\setup.bat" %%* >> "%GLOBAL_DIR%\bk.bat"
echo   OK  Instalador global configurado.
goto :eof

:end
endlocal
