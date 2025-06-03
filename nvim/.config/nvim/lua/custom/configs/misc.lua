vim.filetype.add({ extension = { templ = "templ" } })
vim.api.nvim_create_user_command('LocalTerm', function()
    local term_dir = vim.fn.expand('%:p:h')
    vim.cmd('below new')
    vim.fn.termopen({vim.o.shell}, {cwd = term_dir})
    vim.cmd('startinsert')
end, {})

vim.keymap.set('n', '<leader>tt', ':LocalTerm<CR>', { noremap = true, silent = true, desc = 'Open terminal in current file directory' })
