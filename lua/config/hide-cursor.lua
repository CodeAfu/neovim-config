local cursor_hidden = false
local default_guicursor = vim.o.guicursor

vim.keymap.set('n', '<leader>hc', function()
  if cursor_hidden then
    -- Restore original cursor
    vim.o.guicursor = default_guicursor
    cursor_hidden = false
    print("Cursor Restored")
  else
    -- Save current cursor state before hiding
    default_guicursor = vim.o.guicursor

    -- Create a transparent highlight group
    -- 'blend = 100' makes it fully transparent
    vim.api.nvim_set_hl(0, 'HiddenCursor', { blend = 100, nocombine = true })

    -- Set cursor to use the transparent group for all modes (a)
    -- We use 'ver1' (1% width) as a fallback in case transparency fails
    vim.o.guicursor = 'a:ver1-HiddenCursor'

    cursor_hidden = true
    print("Cursor Hidden")
  end
end, { desc = "Toggle cursor visibility for screenshots" })
