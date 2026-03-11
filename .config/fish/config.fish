# Modify initial greeting on startup to resemble
# neofetch output. The greeting is not shown in
# the VSCode integrated terminal.
function fish_greeting
    if test "$TERM_PROGRAM" = "ghostty"
        macchina
    end
end

# Initialize mise (https://mise.jdx.dev/installing-mise.html)
mise activate fish | source

# Initialize Starship prompt (https://starship.rs/)
starship init fish | source

# pnpm
set -gx PNPM_HOME "/Users/revanth/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

# Bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# CMake
set --export CMAKE_INSTALL "/Applications/CMake.app/Contents"
set --export PATH $CMAKE_INSTALL/bin $PATH

# Together AI
set --export TOGETHER_API_KEY "dc4f06e0f729bb13a309342b270a672adb323101ded7917bb756706b71f56f8d"
