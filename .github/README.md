# Dotfiles

## Setup

I am using these dotfiles across multiple devices and systems.
- For work I am using a Thinkpad T14s with Fedora Workstation and Gnome WM.
- Privately I am using a 2020 MacBook Air M1.
- Also, I am using these dotfiles on Windows using WSL2.
- Maybe these dotfiles might also be spread across some servers and VMs out there. :^)

I manage these dotfiles simply using [GNU stow](https://www.gnu.org/software/stow/). Different 
configurations can be applied from the available packages.
```
stow htop kitty nvim tmux zsh
```

*Or simply, if you want everything ...*
```
stow *
```

## Used tools

- Shell: [zsh](https://www.zsh.org/)
- Promt: [ohmyz](https://ohmyz.sh/) with [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- Terminal Emulator: 
    - On Linux: [kitty](https://github.com/kovidgoyal/kitty)
    - On MacOS and Windows: [Tabby](https://tabby.sh/)
- Terminal Multiplexer: [tmux](https://github.com/tmux/tmux)
- Editors:
    - [GoLand](https://www.jetbrains.com/go/) for Go
    - [RustRover](https://www.jetbrains.com/rust/) for Rust
    - [zed](https://zed.dev/)
    - [neovim](https://neovim.io/)
    - [VSCode](https://code.visualstudio.com/) if I need specific plugins and have enough RAM and patience

Other tools:
- [fzf](https://github.com/junegunn/fzf)
- [bat](https://github.com/sharkdp/bat)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fnm](https://github.com/Schniz/fnm)
- [goup](https://github.com/zekroTJA/goup)

## License

```
MIT License

Copyright (c) 2024 Ringo Hoffmann

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```