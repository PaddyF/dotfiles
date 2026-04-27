# Dotfiles

Personal terminal configuration managed with [GNU Stow](https://www.gnu.org/software/stow/). Catppuccin Mocha theme throughout.

## What's Included

| Package | Tool | Purpose |
|---------|------|---------|
| `zsh` | Zsh | Shell config, aliases, fzf/bat/eza integration, autosuggestions, syntax highlighting |
| `git` | Git | Delta diffs, SSH commit signing, aliases, rebase workflow |
| `starship` | Starship | Cross-shell prompt with git/python/swift info |
| `ghostty` | Ghostty | Terminal emulator config, font, theme |
| `tmux` | tmux | Multiplexer with Ctrl+A prefix, vim nav, session persistence |
| `nvim` | Neovim (LazyVim) | Editor with Catppuccin, Swift LSP |

## Dependencies

All installed via [Homebrew](https://brew.sh/):

```bash
# Core tools
brew install neovim tmux starship git-delta stow

# Shell enhancements
brew install fzf bat ripgrep zoxide eza fd tldr lazygit btop
brew install zsh-autosuggestions zsh-syntax-highlighting direnv atuin

# Extras
brew install jrnl cbonsai

# Font
brew install --cask font-jetbrains-mono-nerd-font
```

## Fresh Machine Setup

```bash
# 1. Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Install all tools
brew install neovim tmux starship git-delta stow \
  fzf bat ripgrep zoxide eza fd tldr lazygit btop \
  zsh-autosuggestions zsh-syntax-highlighting direnv atuin \
  jrnl cbonsai
brew install --cask font-jetbrains-mono-nerd-font

# 3. Clone and stow
git clone https://github.com/PaddyF/dotfiles ~/dotfiles
cd ~/dotfiles
stow zsh git tmux starship ghostty nvim

# 4. Install tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Then inside tmux: Ctrl+A I

# 5. Open a new terminal window
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

## Documentation

Detailed docs live in `~/docs/`:
- `shell-setup.md` — zsh, prompt, history, plugins, fzf, direnv
- `terminal-and-theme.md` — Ghostty, Catppuccin palette, font
- `tmux.md` — multiplexer concepts, keybindings, plugins
- `git-setup.md` — delta, signing, workflow, lazygit
- `neovim.md` — LazyVim structure, keybindings, extras
- `cli-tools.md` — every tool with usage examples
- `dotfiles-management.md` — stow, fresh machine setup

Quick reference: run `cheat` to view the cheatsheet.

## Theme

**Catppuccin Mocha** is applied consistently across: Ghostty, Starship, tmux status bar, fzf, bat, git-delta, and Neovim.
