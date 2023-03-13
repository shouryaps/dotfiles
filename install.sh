# update brew and upgrade all outdated packages
brew update
brew upgrade

# install git
brew install git

# install nerd font
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font

# install terminal emulator/multiplexer
brew tap wez/wezterm
brew install --cask wez/wezterm/wezterm

# install prompt
brew install starship

# install languages
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
brew install go
brew install elixir
brew install node

# install hugo for blogging
brew install hugo

# install nvim
brew install nvim

# install container runtimes and cli
brew install colima
brew install docker
# start colima first time to load the image
colima start
# install docker compose v2+
mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-darwin-aarch64 -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose
# stop colima, so that we can start in future when using
colima stop

# install utility apps
brew install --cask firefox
brew install --cask the-unarchiver
brew install --cask vlc
brew install --cask spotify

# clipboard manager
brew install --cask maccy
open /Applications/Maccy.app

# cleanup
brew cleanup