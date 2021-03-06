export EDITOR=/usr/bin/vim
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# disable .NET Core telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT="true"

export PATH=$PATH:/usr/local/go/bin

. $HOME/.asdf/asdf.sh

export PATH="$HOME/.cargo/bin:$PATH"

nitrogen --restore

