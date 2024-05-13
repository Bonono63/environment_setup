cd %HOMEDRIVE%%HOMEPATH%

set PATH=%PATH%;%HOMEDRIVE%%HOMEPATH%\portable\mingw64\bin\;
set PATH=%PATH%;%HOMEDRIVE%%HOMEPATH%\portable\neovim\nvim-win64\bin\;
set PATH=%PATH%;%HOMEDRIVE%%HOMEPATH%\portable\git\cmd\;

start /B %HOMEDRIVE%%HOMEPATH%\portable\alacritty.exe --config-file %HOMEDRIVE%%HOMEPATH%\portable\alacritty\alacritty.toml