require("nvim-treesitter.install").compilers = { "gcc" } -- Install the clang compiler


require'nvim-treesitter.configs'.setup {
  -- A list of parser ames, or "all" (the listed parsers MUST always be installed)
  ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "python" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
 },
}
