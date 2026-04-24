require('nvim-treesitter').install { 'vim', 'vimdoc', 'lua', 'cpp', 'c' }

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'vim', 'vimdoc', 'lua', 'cpp', 'c' },
  callback = function() vim.treesitter.start() end,
})
