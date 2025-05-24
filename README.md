# shouryaps's dotfiles

These are config files to set up a system the way I like.

This repo assumes you are running macOS. To set up, follow below steps:
1. Install [homebrew](https://brew.sh/):
   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
2. Run following commands:
   ```sh
   chmod +x install.sh
   chmod +x config.sh
   ./install.sh # installs the required tools and apps
   ./config.sh # sets up configuration of above tools that require config files
   ```
