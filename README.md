# Overview
Center around VSCode and Git repo for coding, build, execution, etc. across platforms (my Mac OS X and WSL)

# Setup for Mac OS X
 - Install `xcode` to get C++ and Python enviroment
 - Install VSCode
 - Pull git repo for cross-platform development

# Setup for Windows
 - Install `WSL` in Powershell
 - Install compiler (C++, Python) in WSL CLI
 - Install VSCode
   - Install VSCode extension "WSL" to access Linux environment for development
 - Pull git repo for cross-platform development

# Setup for VScode
 - Copy `settings.json` and `keybindings.json` to VScode directory. See https://stackoverflow.com/a/49706409 for different systems.
 - Install extensions (e.g. formatter)
   - Gemini CLI
   - Gemini Code Assist

# Appendix
## Stale setup
### Command line tool
Use [iTerm2][iTerm2] as replacement of Terminal.

### Vim
Use [Vundle][Vundle] to manage vim plugins.

### Setup
 - Install [iTerm2][iTerm2]
 - Install [Vundle][Vundle]
 - Run setup.sh script

[iTerm2]: https://www.iterm2.com/
[Vundle]: https://github.com/VundleVim/Vundle.vim
