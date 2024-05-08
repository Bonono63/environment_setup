doskey clear=cls
doskey ls=dir
doskey neovim=nvim
doskey vim=nvim

REM C:\Windows\System32\cmd.exe /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" "C:\Windows\regedit.exe""

cd %HOMEDRIVE%%HOMEPATH%
mkdir portable
cd portable
set PATH=%PATH%;%HOMEDRIVE%%HOMEPATH%\portable\mingw64\bin\;
set PATH=%PATH%;%HOMEDRIVE%%HOMEPATH%\portable\neovim\nvim-win64\bin\;
echo Retrieving neovim
IF NOT EXIST neovim.zip powershell.exe -command "Invoke-WebRequest https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-win64.zip -OutFile neovim.zip"
echo Retrieving mingw
IF NOT EXIST mingw64.7z powershell.exe -command "Invoke-WebRequest https://github.com/niXman/mingw-builds-binaries/releases/download/13.2.0-rt_v11-rev1/x86_64-13.2.0-release-win32-seh-msvcrt-rt_v11-rev1.7z -OutFile mingw64.7z"
echo Extracting archives
IF NOT EXIST neovim\NUL powershell.exe -command "Expand-Archive neovim.zip"
IF NOT EXIST mingw64\NUL "C:\Program Files\7-Zip\7z.exe" x -y mingw64.7z
