@echo off
chcp 65001 >nul 2>&1

REM Book Kit v3 - setup.bat (Windows)
REM Uso: setup.bat [--tool <key>] [--all] [--target C:\projeto] [--install-global]

set "SCRIPT_DIR=%~dp0"
set "TARGET_DIR=%CD%"
set "TOOL_LIST="
set "INSTALL_ALL=0"
set "SHOW_HELP=0"
set "INSTALL_GLOBAL=0"

:parse_args
if "%~1"=="" goto after_args
if /i "%~1"=="--help"           set "SHOW_HELP=1"       & shift & goto parse_args
if /i "%~1"=="-h"               set "SHOW_HELP=1"       & shift & goto parse_args
if /i "%~1"=="--all"            set "INSTALL_ALL=1"      & shift & goto parse_args
if /i "%~1"=="--install-global" set "INSTALL_GLOBAL=1"  & shift & goto parse_args
if /i "%~1"=="--tool"           set "TOOL_LIST=%TOOL_LIST% %~2" & shift & shift & goto parse_args
if /i "%~1"=="--target"         set "TARGET_DIR=%~2"    & shift & shift & goto parse_args
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
echo   Uso:
echo     setup.bat --tool ^<key^>               Instala adapter no projeto atual
echo     setup.bat --all                        Instala todos os adapters
echo     setup.bat --all --target C:\projeto    Instala em projeto especifico
echo     setup.bat --install-global             Adiciona bookkit ao PATH do usuario
echo.
echo   Flags podem ser combinadas:
echo     setup.bat --install-global --tool claude
echo.
echo   Ferramentas:
echo     claude      .claude\commands\           /bookkit.brief
echo     codex       .agents\skills\bookkit\     $bookkit-brief
echo     kimi        .kimi\commands\              /bookkit.brief
echo     opencode    .opencode\commands\          /bookkit.brief
echo     agy         .agy\skills\bookkit\         /bookkit.brief  [Antigravity]
echo     cursor      .cursor\rules\               @bookkit.brief  (.mdc)
echo     windsurf    .windsurf\rules\             @bookkit.brief
echo     copilot     .github\                     /bookkit-brief  (.prompt.md)
echo     gemini      .gemini\commands\             /bookkit.brief
echo.
goto end
:skip_help

REM =========================================================
REM --install-global: copia bookkit para %USERPROFILE%\.bookkit
REM e adiciona ao PATH do usuario via PowerShell
REM =========================================================
if "%INSTALL_GLOBAL%"=="1" goto do_install_global
goto skip_install_global

:do_install_global
set "GLOBAL_DIR=%USERPROFILE%\.bookkit"

echo.
echo   Book Kit v3 - Instalacao Global
echo   ==================================
echo   Destino: %GLOBAL_DIR%
echo.

REM Criar pasta global
if not exist "%GLOBAL_DIR%\" mkdir "%GLOBAL_DIR%"

REM Copiar todos os arquivos do kit para o destino global
xcopy /E /Y /Q "%SCRIPT_DIR%." "%GLOBAL_DIR%\" >nul 2>&1
if errorlevel 1 (
    echo   [ERRO] Nao foi possivel copiar para %GLOBAL_DIR%
    goto end
)
echo   OK  Arquivos copiados para %GLOBAL_DIR%

REM Adicionar ao PATH do usuario via PowerShell (seguro - sem truncagem)
echo   Adicionando ao PATH do usuario...

powershell -NoProfile -Command ^
  "$p = [Environment]::GetEnvironmentVariable('PATH','User'); ^
   if ($p -notlike '*\.bookkit*') { ^
     [Environment]::SetEnvironmentVariable('PATH', $p + ';%GLOBAL_DIR%', 'User'); ^
     Write-Host '  OK  %GLOBAL_DIR% adicionado ao PATH do usuario' ^
   } else { ^
     Write-Host '  --  %GLOBAL_DIR% ja esta no PATH (nenhuma alteracao feita)' ^
   }"

REM Criar atalho curto bk.bat dentro da pasta global
echo @echo off > "%GLOBAL_DIR%\bk.bat"
echo call "%GLOBAL_DIR%\setup.bat" %%* >> "%GLOBAL_DIR%\bk.bat"
echo   OK  Atalho criado: bk.bat

echo.
echo   =====================================================
echo   Instalacao global concluida!
echo.
echo   IMPORTANTE: abra um NOVO terminal para que o PATH
echo   seja atualizado. Em seguida, de qualquer pasta:
echo.
echo     setup.bat --tool claude
echo     bk --tool claude
echo     bk --all
echo.
echo   =====================================================
echo.

REM Se nao tiver --tool ou --all junto, para aqui
if "%TOOL_LIST%"=="" if "%INSTALL_ALL%"=="0" goto end
REM Caso contrario, continua para instalar no projeto atual
goto continue_install

:skip_install_global

REM =========================================================
REM Instalacao normal no projeto
REM =========================================================
:continue_install

if not "%TOOL_LIST%"=="" goto skip_interactive
if not "%INSTALL_ALL%"=="0" goto skip_interactive

echo.
echo   Book Kit v3 - Qual ferramenta voce esta usando?
echo   ==================================================
echo.
echo   1) claude      (.claude\commands\)
echo   2) codex       (.agents\skills\bookkit\)
echo   3) kimi        (.kimi\commands\)
echo   4) opencode    (.opencode\commands\)
echo   5) agy         (.agy\skills\bookkit\)  [Antigravity]
echo   6) cursor      (.cursor\rules\)
echo   7) windsurf    (.windsurf\rules\)
echo   8) copilot     (.github\)
echo   9) gemini      (.gemini\commands\)
echo  10) Todas
echo.
set /p "CHOICES=Escolha (ex: 1 ou 1 3 para multiplas): "

for %%C in (%CHOICES%) do (
    if "%%C"=="1"  set "TOOL_LIST=%TOOL_LIST% claude"
    if "%%C"=="2"  set "TOOL_LIST=%TOOL_LIST% codex"
    if "%%C"=="3"  set "TOOL_LIST=%TOOL_LIST% kimi"
    if "%%C"=="4"  set "TOOL_LIST=%TOOL_LIST% opencode"
    if "%%C"=="5"  set "TOOL_LIST=%TOOL_LIST% agy"
    if "%%C"=="6"  set "TOOL_LIST=%TOOL_LIST% cursor"
    if "%%C"=="7"  set "TOOL_LIST=%TOOL_LIST% windsurf"
    if "%%C"=="8"  set "TOOL_LIST=%TOOL_LIST% copilot"
    if "%%C"=="9"  set "TOOL_LIST=%TOOL_LIST% gemini"
    if "%%C"=="10" set "INSTALL_ALL=1"
)
:skip_interactive

if "%INSTALL_ALL%"=="1" set "TOOL_LIST=claude codex kimi opencode agy cursor windsurf copilot gemini"

echo.
echo   Instalando Book Kit v3 em: %TARGET_DIR%
echo   Ferramentas: %TOOL_LIST%
echo.

if not exist "%TARGET_DIR%\bookkit\"         mkdir "%TARGET_DIR%\bookkit"
if not exist "%TARGET_DIR%\bookkit\chapters\" mkdir "%TARGET_DIR%\bookkit\chapters"

set "ERRORS=0"

for %%T in (%TOOL_LIST%) do (
    call :install_tool %%T
)

REM Copiar templates para bookkit/
if exist "%SCRIPT_DIR%templates\" (
    xcopy /Y /Q "%SCRIPT_DIR%templates\*.md" "%TARGET_DIR%\bookkit\" >nul 2>&1
)

echo.
if "%ERRORS%"=="0" (
    echo   OK  Book Kit v3 instalado com sucesso.
) else (
    echo   AVISO  Algumas instalacoes tiveram problemas.
)
echo.
echo   Estrutura criada:
echo     bookkit\           artefatos gerados pelos comandos
echo     bookkit\chapters\  capitulos escritos pelo agente
echo.
echo   Proximos passos:
echo     /bookkit.market         MARKET.md       [discovery]
echo     /bookkit.constitution   CONSTITUTION.md [spec]
echo     /bookkit.brief          BRIEF.md        [spec]
echo     /bookkit.outline        OUTLINE.md      [structure]
echo     /bookkit.write Cap.01   bookkit\chapters\cap-01.md
echo.
goto end

REM =========================================================
:install_tool
REM =========================================================
set "TOOL=%~1"
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
if errorlevel 1 (
    echo   [ERRO] Falha ao copiar: %DEST%
    set /a ERRORS+=1
) else (
    echo   OK  %TOOL%  ^>^>  %DEST%\
)
goto :eof

:end
