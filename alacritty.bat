cd %HOMEDRIVE%%HOMEPATH%

set PATH=%PATH%;%HOMEDRIVE%%HOMEPATH%\portable\mingw64\bin\;
set PATH=%PATH%;%HOMEDRIVE%%HOMEPATH%\portable\neovim\nvim-win64\bin\;
set PATH=%PATH%;%HOMEDRIVE%%HOMEPATH%\portable\git\cmd\;
set PATH=%PATH%;%HOMEDRIVE%%HOMEPATH%\portable\cmake\cmake-3.31.2-windows-x86_64\bin\;

start /B %HOMEDRIVE%%HOMEPATH%\portable\alacritty.exe --config-file %HOMEDRIVE%%HOMEPATH%\portable\alacritty\alacritty.toml
