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

## fzf Keybindings

| Key | Action |
|-----|--------|
| `Ctrl+R` | Fuzzy search command history |
| `Ctrl+T` | Fuzzy find files (with bat preview) |
| `Alt+C` | Fuzzy cd into directory |

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
| `Ctrl+A r` | Reload config |
| `Ctrl+A [` | Enter copy mode (scroll) |

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
| `Space f f` | Find files |
| `Space f r` | Recent files |
| `Space s g` | Grep string |
| `Space c a` | Code actions |
| `g d` | Go to definition |
| `g r` | Go to references |
| `K` | Hover documentation |
| `] d` / `[ d` | Next/prev diagnostic |
| `Space q q` | Quit all |

## CLI Tools

| Tool | Usage | Description |
|------|-------|-------------|
| `bat` | `bat file.py` | cat with syntax highlighting |
| `fd` | `fd pattern` | Fast find replacement |
| `rg` | `rg pattern` | Fast grep (ripgrep) |
| `z` | `z dirname` | Smart cd (zoxide) |
| `tldr` | `tldr tar` | Simplified man pages |
| `btop` | `btop` | System monitor |
| `lazygit` / `lg` | `lg` | Terminal git UI |
| `jrnl` | `jrnl today: note` | Command-line journal |
| `cbonsai` | `cbonsai -l` | ASCII bonsai tree (live / screensaver) |

## Shell Functions

| Function | Usage | Description |
|----------|-------|-------------|
| `mkcd` | `mkcd new-dir` | mkdir + cd in one step |
| `glog` | `glog` / `glog -30` | Git graph log |
