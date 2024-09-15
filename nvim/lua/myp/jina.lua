local jobs = require('plenary.job')

local buf = vim.api.nvim_get_current_buf()
local current_row = vim.api.nvim_win_get_cursor(vim.api.nvim_get_current_win())[1]

function Jina_website(url)
    if url == nil then
        url = vim.fn.input("Enter the URL: ")
    end
    local stdout_results = {}
    local job = jobs:new {
        command = "curl",
        args = {"https://r.jina.ai/"..url},
            on_stdout = function(_, line)
            table.insert(stdout_results, line)
    end,
  }
  job:sync()
  print(vim.inspect.inspect(stdout_results))
  vim.api.nvim_buf_set_lines(buf, current_row,current_row, false, stdout_results)
end

vim.keymap.set("n", "<leader>ji", "<cmd>lua Jina_website()<cr>", {noremap = true})
