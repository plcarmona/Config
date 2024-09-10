-- Importar el módulo compiler
local compiler = require("compiler")

-- Configurar el plugin
compiler.setup{}

-- Configurar atajos de teclado (keymaps) para los comandos
vim.keymap.set('n', '<leader>co', ':CompilerOpen<CR>', { noremap = true, silent = true, desc = "Open Compiler" })
vim.keymap.set('n', '<leader>ct', ':CompilerToggleResults<CR>', { noremap = true, silent = true, desc = "Toggle Compiler Results" })
vim.keymap.set('n', '<leader>cr', ':CompilerRedo<CR>', { noremap = true, silent = true, desc = "Redo Last Compiler Action" })
vim.keymap.set('n', '<leader>cs', ':CompilerStop<CR>', { noremap = true, silent = true, desc = "Stop All Compiler Tasks" })

-- Opcionalmente, puedes agregar un autocomando para abrir el compilador automáticamente para ciertos tipos de archivos
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"c", "cpp", "rust", "go"},  -- Ajusta esta lista según tus necesidades
  callback = function()
    vim.cmd("CompilerOpen")
  end,
})
