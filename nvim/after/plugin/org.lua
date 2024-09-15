-- init.lua

require('orgmode').setup()
require('org-roam').setup({directory = '~/org/roam'})
-- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
-- add ~org~ to ignore_install
-- require('nvim-treesitter.configs').setup({
--   ensure_installed = 'all',
--   ignore_install = { 'org' },
-- })

vim.opt.conceallevel = 2
vim.opt.concealcursor = 'nc'

require('org-bullets').setup()

local telescope = require("telescope").load_extension("orgmode")

vim.keymap.set("n", "<leader>r", require("telescope").extensions.orgmode.refile_heading)
vim.keymap.set("n", "<leader>fh", require("telescope").extensions.orgmode.search_headings)
vim.keymap.set("n", "<leader>li", require("telescope").extensions.orgmode.insert_link)

