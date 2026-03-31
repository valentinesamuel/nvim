# nvim

My personal Neovim configuration, built on [LazyVim](https://lazyvim.org) with [lazy.nvim](https://github.com/folke/lazy.nvim).

## Requirements

- **Neovim** >= 0.9
- **git**
- A **[Nerd Font](https://www.nerdfonts.com/)** (for icons — e.g. JetBrainsMono Nerd Font)
- **[ripgrep](https://github.com/BurntSushi/ripgrep)** — for Telescope live grep
- **[fd](https://github.com/sharkdp/fd)** — for faster file finding
- **[lazygit](https://github.com/jesseduffield/lazygit)** _(optional)_ — for the git UI integration

Install on macOS:

```bash
brew install neovim ripgrep fd lazygit
```

## Installation

```bash
# Back up existing config if needed
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak

# Clone
git clone https://github.com/valentinesamuel/nvim ~/.config/nvim

# Launch — lazy.nvim will auto-install all plugins on first start
nvim
```

## Structure

```
~/.config/nvim/
├── init.lua              # Entry point
├── lazy-lock.json        # Pinned plugin versions
├── lua/
│   ├── config/
│   │   ├── lazy.lua      # Plugin manager bootstrap + LazyVim setup
│   │   ├── options.lua   # Vim options
│   │   ├── keymaps.lua   # Custom keymaps
│   │   └── autocmds.lua  # Autocommands
│   └── plugins/          # Plugin specs (overrides/additions)
```

## Plugins

### UI
| Plugin | Description |
|---|---|
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | Default colorscheme |
| [catppuccin](https://github.com/catppuccin/nvim) | Alternative colorscheme |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Buffer tabs |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Status line |
| [noice.nvim](https://github.com/folke/noice.nvim) | UI overhaul (cmdline, messages) |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keybinding hints |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | Quality-of-life utilities |

### LSP & Completion
| Plugin | Description |
|---|---|
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client configuration |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP/formatter/linter installer |
| [blink.cmp](https://github.com/Saghen/blink.cmp) | Autocompletion engine |
| [lazydev.nvim](https://github.com/folke/lazydev.nvim) | Neovim Lua API completion |

### Syntax & Treesitter
| Plugin | Description |
|---|---|
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting |
| [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Treesitter text objects |
| [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) | Auto-close HTML/JSX tags |

### Navigation & Search
| Plugin | Description |
|---|---|
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [flash.nvim](https://github.com/folke/flash.nvim) | Enhanced motions/search |
| [grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim) | Search and replace |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | Diagnostics list |

### Code Tools
| Plugin | Description |
|---|---|
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Code formatting |
| [nvim-lint](https://github.com/mfussenegger/nvim-lint) | Linting |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git gutter signs |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlight TODO/FIXME/etc. |

### Utilities
| Plugin | Description |
|---|---|
| [persistence.nvim](https://github.com/folke/persistence.nvim) | Session persistence |
| [mini.ai](https://github.com/echasnovski/mini.ai) | Extended text objects |
| [mini.pairs](https://github.com/echasnovski/mini.pairs) | Auto-pair brackets/quotes |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Snippet library |

## Updating Plugins

Open Neovim and press `<leader>l` to open the lazy.nvim UI, then press `U` to update all plugins.

Or from the command line:

```bash
nvim --headless "+Lazy! update" +qa
```

After updating, commit the updated `lazy-lock.json` to pin the new versions:

```bash
cd ~/.config/nvim
git add lazy-lock.json
git commit -m "chore: update plugin lockfile"
git push
```

## License

Apache 2.0 — see [LICENSE](./LICENSE).
