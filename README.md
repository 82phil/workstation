# Introduction

Everything you need to get up and running from scratch in minutes

## Configuration Files

Easy peasy, just copy them over to your `~`

# WSL

## Setting up Git

VS Code will have issues running WSL Git from the Windows side, there
is however a workaround, follow here:

https://github.com/andy-5/wslgit

Note the following:

If you are going to setup WSL to change `/mnt/c` -> `/c`  for Windows directories
under WSL then setup wslgit to use the same path.

## Docker

https://docs.microsoft.com/en-us/virtualization/community/team-blog/2017/20171208-wsl-interoperability-with-docker

## Powerline for WSL

```
sudo apt install golang-go
go get -u github.com/justjanne/powerline-go
```

```
GOPATH=$HOME/go
function _update_ps1() {
    PS1="$($GOPATH/bin/powerline-go -error $?)"
}
if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
```


https://www.hanselman.com/blog/HowToMakeAPrettyPromptInWindowsTerminalWithPowerlineNerdFontsCascadiaCodeWSLAndOhmyposh.aspx

# Update default editor

add in .bashrc

```bash
export VISUAL=vim
export EDITOR="$VISUAL"

## Other Stuff

https://github.com/sirredbeard/Awesome-WSL
