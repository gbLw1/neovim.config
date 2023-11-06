# Neovim config

## Overview

This is my configuration for neovim that I use for development.

- [x] LSP - language server
- [x] Completion - autocompletion
- [x] Treesitter - syntax highlighting
- [x] Telescope - fuzzy finder
- [x] Fugitive - git
- [x] Flog - git log (graphically)
- [x] Comment.nvim - comments
- [x] Gitsigns - signs
- [x] IndentBlankline - indentation guides
- [x] Lualine - status line
- [x] Mason - Package manager (LSP / linting / formatter)
- [x] Onedark.nvim - color scheme
- [x] Neodev - signature helper

Also some nice [keymaps](./after/plugin/remap.lua) and [buffer settings](./after/plugin/opt.lua) that you can edit.

## Installation

Just clone the repository at your neovim directory

### Linux

```bash
git clone https://github.com/gbLw1/neovim.config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

### Windows (pwsh)

```pwsh
git clone https://github.com/gbLw1/neovim.config.git "$env:LOCALAPPDATA/nvim"
```

