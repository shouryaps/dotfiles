# update brew and upgrade all outdated packages
brew update
brew upgrade

# install git
brew install git

# install nerd font
brew install font-jetbrains-mono-nerd-font

# install terminal emulator/multiplexer
brew install --cask wez/wezterm/wezterm

# install and setup prompt
brew install starship
# create if not already present
touch ~/.zshrc
# add line at end of file, if line doesn't exist
grep -qxF 'eval "$(starship init zsh)"' ~/.zshrc || echo 'eval "$(starship init zsh)"' >> ~/.zshrc

# install languages
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
brew install go
brew install elixir
brew install n
mkdir $HOME/.n
grep -qxF 'export N_PREFIX=$HOME/.n' ~/.zshrc || echo 'export N_PREFIX=$HOME/.n' >> ~/.zshrc
source ~/.zshrc
n latest

# setup go path
grep -qxF 'export GOPATH=$HOME/go' ~/.zshrc || echo 'export GOPATH=$HOME/go' >> ~/.zshrc
grep -qxF 'export PATH=$GOPATH/bin:$PATH' ~/.zshrc || echo 'export PATH=$GOPATH/bin:$PATH' >> ~/.zshrc

# install hugo for blogging
brew install hugo

# install nvim
brew install nvim

# install utility apps
brew install --cask firefox
brew install --cask google-chrome
brew install --cask the-unarchiver
brew install --cask vlc
brew install --cask raspberry-pi-imager
brew install --cask discord

# clipboard manager
brew install --cask maccy
open /Applications/Maccy.app

# cleanup
brew cleanup