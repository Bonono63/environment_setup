REM C:\Windows\System32\cmd.exe /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" "C:\Windows\regedit.exe""

echo @off

cd %HOMEDRIVE%%HOMEPATH%
mkdir portable
cd portable
set PATH=%PATH%;%HOMEDRIVE%%HOMEPATH%\portable\mingw64\bin\;
set PATH=%PATH%;%HOMEDRIVE%%HOMEPATH%\portable\neovim\nvim-win64\bin\;
set PATH=%PATH%;%HOMEDRIVE%%HOMEPATH%\portable\git\cmd\;
set PATH=%PATH%;%HOMEDRIVE%%HOMEPATH%\portable\cmake\cmake-3.31.2-windows-x86_64\bin;

echo Retrieving neovim
IF NOT EXIST neovim.zip powershell.exe -command "Invoke-WebRequest https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-win64.zip -OutFile neovim.zip"
echo Retrieving mingw
IF NOT EXIST mingw64.7z powershell.exe -command "Invoke-WebRequest https://github.com/niXman/mingw-builds-binaries/releases/download/13.2.0-rt_v11-rev1/x86_64-13.2.0-release-win32-seh-msvcrt-rt_v11-rev1.7z -OutFile mingw64.7z"
echo Retrieving Git
IF NOT EXIST git.zip powershell.exe -command "Invoke-WebRequest https://github.com/git-for-windows/git/releases/download/v2.45.0.windows.1/MinGit-2.45.0-64-bit.zip -OutFile git.zip"
echo Retrieving Alacritty
IF NOT EXIST alacritty.exe powershell.exe -command "Invoke-WebRequest https://github.com/alacritty/alacritty/releases/download/v0.13.2/Alacritty-v0.13.2-portable.exe -OutFile alacritty.exe"
# echo Retrieving CMake
# IF NOT EXIST cmake.exe powershell.exe -command "Invoke-WebRequest https://github.com/Kitware/CMake/releases/download/v3.31.2/cmake-3.31.2-windows-x86_64.zip -OutFile cmake.zip"


echo Extracting archives
IF NOT EXIST neovim\NUL powershell.exe -command "Expand-Archive neovim.zip"
IF NOT EXIST git\NUL powershell.exe -command "Expand-Archive git.zip"
# IF NOT EXIST cmake\NUL powershell.exe -command "Expand-Archive cmake.zip"
IF NOT EXIST mingw64\NUL "C:\Program Files\7-Zip\7z.exe" x -y mingw64.7z

cd %APPDATA%\..\Local\
mkdir nvim
cd nvim
git clone https://github.com/Bonono63/nvim-config.git
cd nvim-config
mv init.lua ../

cd %HOMEDRIVE%%HOMEPATH%\portable\
git clone https://github.com/Bonono63/alacritty-config.git alacritty

cd %HOMEDRIVE%%HOMEPATH%
exit

