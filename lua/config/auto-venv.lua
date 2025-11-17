vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    if vim.fn.filereadable(".venv/Scripts/activate") == 1 then
      vim.env.VIRTUAL_ENV = vim.fn.getcwd() .. "/.venv"
      vim.env.PATH = vim.fn.getcwd() .. "/.venv/Scripts;" .. vim.env.PATH
    end
  end,
})
