vim.o.number = true                        -- Mostra i numeri di riga
vim.o.relativenumber = true                -- Mostra i numeri di riga relativi
vim.o.wrap = false                         -- Disabilita il wrapping delle righe
vim.o.tabstop = 4                          -- Imposta la larghezza di un tab
vim.o.shiftwidth = 4                       -- Imposta la larghezza dello shift
vim.o.expandtab = true                     -- Converte i tab in spazi


vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true, silent = true })

-- Impostazioni dei plugin
require('nvim-autopairs').setup()         -- Imposta il completamento automatico delle parentesi
require('nvim-treesitter.configs').setup { -- Imposta Treesitter per il rilevamento della sintassi
  ensure_installed = 'maintained',
  highlight = {
    enable = true
  }
}
require('lspconfig').tsserver.setup {}    -- Imposta il server TypeScript Language Server Protocol (LSP)

