# Cheatsheet

## Shell Aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `ls` | `eza --icons` | List files with icons |
| `ll` | `eza -lah --icons --git` | Long list with git status |
| `la` | `eza -a --icons` | List all including hidden |
| `lt` | `eza --tree --icons --level=2` | Tree view (2 levels) |
| `cat` | `bat --paging=never` | Syntax-highlighted cat |
| `catp` | `bat` | bat with pager |
| `vim` / `v` | `nvim` | Neovim |
| `lg` | `lazygit` | Terminal git UI |
| `cheat` | `bat ~/dotfiles/CHEATSHEET.md` | This file |
| `..` | `cd ..` | Up one directory |
| `...` | `cd ../..` | Up two directories |

## Git Aliases

### Shell (`g` = `git`)

| Alias | Command |
|-------|---------|
| `gs` | `git status` |
| `gd` | `git diff` |
| `gl` | `git log --oneline -20` |
| `ga` | `git add` |
| `gc` | `git commit` |
| `gp` | `git push` |
| `gco` | `git checkout` |
| `gsw` | `git switch` |
| `gb` | `git branch` |
| `glog` | graph log (function) |

### Git Config (`git <alias>`)

| Alias | Command |
|-------|---------|
| `git s` | `status` |
| `git co` | `checkout` |
| `git sw` | `switch` |
| `git br` | `branch` |
| `git ci` | `commit` |
| `git lg` | graph log (20 entries) |
| `git amend` | amend last commit |
| `git unstage` | unstage files |
| `git last` | show last commit |
| `git wip` | add all + WIP commit |

## Shell Keybindings

| Key | Action | Powered by |
|-----|--------|-----------|
| `Ctrl+R` | Search command history (full-screen) | atuin |
| `Ctrl+T` | Fuzzy find files (with bat preview) | fzf + fd |
| `Alt+C` | Fuzzy cd into directory | fzf + fd |
| `Right arrow` | Accept autosuggestion | zsh-autosuggestions |
| `Alt+Right` | Accept one word of suggestion | zsh-autosuggestions |

## tmux (prefix: `Ctrl+A`)

| Key | Action |
|-----|--------|
| `Ctrl+A \|` | Split pane vertically |
| `Ctrl+A -` | Split pane horizontally |
| `Ctrl+A c` | New window |
| `Ctrl+A h/j/k/l` | Navigate panes (vim-style) |
| `Ctrl+A H/J/K/L` | Resize panes |
| `Ctrl+A 1-9` | Switch to window N |
| `Ctrl+A d` | Detach session |
| `Ctrl+A z` | Toggle pane zoom |
| `Ctrl+A r` | Reload config |
| `Ctrl+A [` | Enter copy mode (scroll) |
| `Ctrl+A I` | Install plugins (TPM) |
| `Ctrl+A Ctrl+S` | Save session (resurrect) |
| `Ctrl+A Ctrl+R` | Restore session (resurrect) |

### tmux Commands
```
tmux                    # New session
tmux new -s name        # Named session
tmux ls                 # List sessions
tmux attach -t name     # Reattach
```

## LazyVim (Neovim)

Leader key: `Space`

| Key | Action |
|-----|--------|
| `Space Space` | Find files |
| `Space /` | Live grep (search in files) |
| `Space e` | File explorer (neo-tree) |
| `Space ,` | Switch buffers |
| `Space f r` | Recent files |
| `Space c a` | Code actions |
| `Space c r` | Rename symbol |
| `g d` | Go to definition |
| `g r` | Go to references |
| `K` | Hover documentation |
| `gcc` | Toggle line comment |
| `] d` / `[ d` | Next/prev diagnostic |
| `Space gg` | Open lazygit |
| `Space q q` | Quit all |

## CLI Tools

| Tool | Usage | Description |
|------|-------|-------------|
| `bat` | `bat file.py` | cat with syntax highlighting |
| `fd` | `fd pattern` | Fast find replacement |
| `rg` | `rg pattern` | Fast grep (ripgrep) |
| `z` | `z dirname` | Smart cd (zoxide) |
| `zi` | `zi` | Interactive zoxide with fzf |
| `tldr` | `tldr tar` | Simplified man pages |
| `btop` | `btop` | System monitor |
| `lazygit` / `lg` | `lg` | Terminal git UI |
| `jrnl` | `jrnl today: note` | Command-line journal |
| `cbonsai` | `cbonsai -l` | ASCII bonsai tree |
| `direnv allow` | `direnv allow` | Trust current `.envrc` |
| `atuin stats` | `atuin stats` | Shell history statistics |

## direnv (.envrc examples)

```bash
export API_KEY="dev-key"           # set env var
layout python3                      # auto-create and activate venv
source .venv/bin/activate           # activate existing venv
```

## Shell Functions

| Function | Usage | Description |
|----------|-------|-------------|
| `mkcd` | `mkcd new-dir` | mkdir + cd in one step |
| `glog` | `glog` / `glog -30` | Git graph log |

## Detailed Docs

See `~/docs/` for in-depth documentation on each area:
- `shell-setup.md` — zsh, prompt, history, plugins, fzf, direnv
- `terminal-and-theme.md` — Ghostty, Catppuccin palette, font
- `tmux.md` — multiplexer concepts, keybindings, plugins
- `git-setup.md` — delta, signing, workflow, lazygit
- `neovim.md` — LazyVim structure, keybindings, extras
- `cli-tools.md` — every tool with usage examples
- `dotfiles-management.md` — stow, fresh machine setup
