# Introduction

Instantly set up bash, tmux, vim, etc on your new workstation for:

- Sharing the clipboard between Windows and WSL
- Mouse support
- Quality of life improvements for bash
- Supporting Docker bindings from WSL
- Tricks to save seconds

# Installation

## Most of it

```bash
./setup.sh
. ~/.bashrc
```

In addition there are files under `wsl/` and `windows/` to configure WSL
and tools in Windows.

## Git on Windows

Use this tool to use Git from WSL in Windows.

https://github.com/andy-5/wslgit

If you are going to setup WSL to change `/mnt/c` -> `/c`  for Windows directories
under WSL then setup wslgit to use the same path.

## Docker

https://docs.microsoft.com/en-us/virtualization/community/team-blog/2017/20171208-wsl-interoperability-with-docker

## Powerline for WSL

Update the fonts used for the Windows Console and the Terminal

https://www.hanselman.com/blog/HowToMakeAPrettyPromptInWindowsTerminalWithPowerlineNerdFontsCascadiaCodeWSLAndOhmyposh.aspx

## Other Stuff

https://github.com/sirredbeard/Awesome-WSL

# Backup your setup

There is also a script to backup changes to configuration files.

```bash
./backup.sh
```