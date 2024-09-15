local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Any valid git URL is allowed
Plug('https://github.com/junegunn/vim-easy-align.git')

-- Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug('fatih/vim-go', { ['tag'] = '*' })

-- Using a non-default branch
Plug('neoclide/coc.nvim', { ['branch'] = 'release' })

-- Post-update hook: run a shell command after installing or updating the plugin
Plug('junegunn/fzf', { ['dir'] = '~/.fzf', ['do'] = './install --all' })

-- If the vim plugin is in a subdirectory, use 'rtp' option to specify its path
Plug('nsf/gocode', { ['rtp'] = 'vim' })

-- On-demand loading: loaded when the specified command is executed
Plug('preservim/nerdtree', { ['on'] = 'NERDTreeToggle' })

-- On-demand loading: loaded when a file with a specific file type is opened
Plug('tpope/vim-fireplace', { ['for'] = 'clojure' })

-- Plenary
Plug('nvim-lua/plenary.nvim')

--- Telescope

Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })

--- Telescope sorter
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })

--- Rose Pine
Plug('https://github.com/will/rose-pine-neovim.git')

--- treesitter
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })

--- Harpoon
Plug('ThePrimeagen/harpoon', { ['branch'] = 'harpoon2' })

--- Undotree
Plug('mbbill/undotree')

--- Fugitive
Plug('tpope/vim-fugitive')

--- surround
Plug('tpope/vim-surround')

--- Lspconfig
Plug('neovim/nvim-lspconfig')

--- Vimcmp
Plug('hrsh7th/nvim-cmp')

--- Nvimlsp
Plug('hrsh7th/cmp-nvim-lsp')

--- Buffer
Plug('hrsh7th/cmp-buffer')

--- cmpLuasnip
Plug('saadparwaiz1/cmp_luasnip')

--- Luasnip
Plug('L3MON4D3/LuaSnip')

--- Mason
Plug('https://github.com/williamboman/mason.nvim.git')

--- mason-lspconfig
Plug('https://github.com/williamboman/mason-lspconfig.nvim.git')

--- conda
Plug("kmontocam/nvim-conda")

--- Compiler
Plug("Zeioth/compiler.nvim")

--- Overseer
Plug("stevearc/overseer.nvim")

--- Org
Plug("nvim-orgmode/orgmode")

--- Org Roam
Plug("chipsenkbeil/org-roam.nvim")

--- Bullets
Plug('akinsho/org-bullets.nvim')

--- Telescope Org
Plug('nvim-orgmode/telescope-orgmode.nvim')

--- gen.vim
Plug("David-Kunz/gen.nvim")

--- gp.nvim
Plug('robitx/gp.nvim')

--- iron
Plug('Vigemus/iron.nvim')


vim.call('plug#end')
