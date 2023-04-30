# oxographene.nvim

forked from oxocarbon [@nyoom-engineering/oxocarbon.nvim](https://github.com/gp-themes/oxographene.nvim)

## Features

- Support for popular plugins, such as Lsp, Treesitter, and Semantic Highlighting
- Fast and Featureful. Supports all the highlights you'll ever need without making a dent on startuptime
- Uses `Termguicolors` but its compatible with 16-color terminals as well

### Plugin support

The colorscheme explicitly adds highlights for the following plugins:

- Vim Diagnostics
- Vim LSP
- Nvim-Treesitter
- Telescope
- Nvim-Notify
- Nvim-Cmp
- NvimTree
- Neogit
- Gitsigns
- Hydra

And many others should "just work!" If you have a plugin that needs explicit highlights, feel free to open an issue or PR and I would be happy to add them.  

## Install

The colorscheme requires the latest stable or nightly neovim (> `v0.7.0`)

### Packer.nvim

```lua
use {'gp-themes/oxographene.nvim'}
```

### Usage

For neovim nightly users:

```lua
vim.opt.background = "dark" -- set this to dark or light
vim.cmd.colorscheme "oxographene"
```

For neovim stable users:

```lua
vim.opt.background = "dark" -- set this to dark or light
vim.cmd("colorscheme oxographene")
```

For nyoom.nvim users:
Nyoom comes bundled with a version of oxographene. Enable the `ui.nyoom` module

## Development

You must install [hotpot](https://github.com/rktjmp/hotpot.nvim), since is what is used for compiling the fennel code.

### Workflow

* Fork the project
* Make changes in the files under `fnl/`
* Compile your changes by running `:Fnlfile make.fnl`
* Make a PR

## License

The project is licensed under the MIT license
