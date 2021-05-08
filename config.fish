# Start X at login (on Linux)
if test (uname -s) = "Linux"
    if status is-login
        if test -z "$DISPLAY" -a $XDG_VTNR = 1
            exec startx -- -keeptty &> /dev/null
        end
    end
end

# Mac support
if test (uname -s) = "Darwin"
  set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
  set -gx PATH /usr/local/opt/gnu-sed/libexec/gnubin $PATH
end

# Alias
# thefuck
thefuck --alias | source
