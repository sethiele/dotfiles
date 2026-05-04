# Dotfiles

These are the dotfiles I use.
They are [managed with stow](http://web.archive.org/web/20171007000027/https://taihen.org/managing-dotfiles-with-gnu-stow/).

## Setup

This guide assumes you're running OSX.

1. Install [stow](https://www.gnu.org/software/stow/):

   ```bash
   brew install stow
   ```

2. To selectively install configuration files (e.g. Bash), just do:

   ```bash
   cd ~/dotfiles
   stow bash
   ```

3. To restow a modified configuration, just do:

   ```bash
   cd ~/dotfiles
   stow -R bash
   ```

## TODO

- [ ] Simple Installation

This README based on [awendt/dotfiles/README.md](https://github.com/awendt/dotfiles/blob/main/README.md)
