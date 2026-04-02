# Dotfiles

Personal terminal configuration managed with [GNU Stow](https://www.gnu.org/software/stow/). Catppuccin Mocha theme throughout.

## What's Included

| Package | Tool | Purpose |
|---------|------|---------|
| `zsh` | Zsh | Shell config, aliases, fzf/bat/eza integration |
| `git` | Git | Delta diffs, aliases, rebase workflow |
| `starship` | Starship | Cross-shell prompt with git/python/swift info |
| `ghostty` | Ghostty | Terminal emulator config, font, theme |
| `tmux` | tmux | Multiplexer with Ctrl+A prefix, vim nav |
| `nvim` | Neovim (LazyVim) | Editor with Catppuccin, Swift LSP |

## Dependencies

All installed via [Homebrew](https://brew.sh/):

```bash
# Core tools
brew install neovim tmux starship git-delta stow

# Shell enhancements
brew install fzf bat ripgrep zoxide eza fd tldr lazygit btop

# Font
brew install --cask font-jetbrains-mono-nerd-font
```

## Fresh Machine Setup

```bash
# 1. Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Install all tools
brew install neovim tmux starship git-delta stow fzf bat ripgrep zoxide eza fd tldr lazygit btop
brew install --cask font-jetbrains-mono-nerd-font

# 3. Clone and stow
git clone <this-repo-url> ~/dotfiles
cd ~/dotfiles
stow zsh git tmux starship ghostty nvim

# 4. Open a new terminal window
```

## Managing Configs

```bash
# Add a new package (e.g., ssh)
mkdir -p ~/dotfiles/ssh/.ssh
mv ~/.ssh/config ~/dotfiles/ssh/.ssh/config
cd ~/dotfiles && stow ssh

# Re-stow after changing directory structure
cd ~/dotfiles && stow -R <package>

# Remove symlinks for a package
cd ~/dotfiles && stow -D <package>
```

## Theme

**Catppuccin Mocha** is applied consistently across: Ghostty, Starship, tmux status bar, fzf, bat, git-delta, and Neovim.
