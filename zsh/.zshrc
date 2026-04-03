# --- Path ---
export PATH="$HOME/.local/bin:$PATH"

# --- Tool initialization ---
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# --- fzf ---
source /opt/homebrew/opt/fzf/shell/key-bindings.zsh
source /opt/homebrew/opt/fzf/shell/completion.zsh

export FZF_DEFAULT_OPTS="
  --height=40%
  --layout=reverse
  --border
  --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8
  --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc
  --color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8
"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --style=numbers --line-range=:200 {} 2>/dev/null || ls -la {}'"
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'
export FZF_ALT_C_OPTS="--preview 'eza --tree --level=2 --icons {} | head -20'"

# --- bat ---
export BAT_THEME="Catppuccin Mocha"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"

# --- Editor ---
export EDITOR="nvim"
export VISUAL="nvim"

# --- Aliases ---
alias ls="eza --icons"
alias ll="eza -lah --icons --git"
alias la="eza -a --icons"
alias lt="eza --tree --icons --level=2"
alias cat="bat --paging=never"
alias catp="bat"
alias vim="nvim"
alias v="nvim"
alias g="git"
alias gs="git status"
alias gd="git diff"
alias gl="git log --oneline -20"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gco="git checkout"
alias gsw="git switch"
alias gb="git branch"
alias lg="lazygit"
alias cheat="bat ~/dotfiles/CHEATSHEET.md"
alias ..="cd .."
alias ...="cd ../.."

# --- Functions ---
mkcd() { mkdir -p "$1" && cd "$1"; }
glog() { git log --graph --oneline --decorate --all "${@:---20}"; }
