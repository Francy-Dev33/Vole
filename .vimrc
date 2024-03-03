" Plugin manager
set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix
set textwidth=80

" Plugin manager
if empty($VIMRUNTIME)
  set runtimepath+=~/.vim/plugged
else
  set runtimepath+=${VIMRUNTIME}/plugins
endif

" Installazione automatica dei plugin
Plug 'junegunn/vim-plug'

" Abilitazione dei plugin
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'neovim/nvim-lspconfig'
Plug 'dradtke/coc.nvim', {'branch': 'release'}
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
call plug#end()

" Impostazioni per NERDTree
set autochdir
set hidden
set nofoldenable
let g:nerdtree_winheight = 20

" Impostazioni per CoC
let g:coc_global_extensions = ['coc-json', 'coc-python']
set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix
set textwidth=80

" Impostazioni per Telescope
let g:telescope_fzy_fuzzy_min_score = 1
let g:telescope_fzy_vim_fuzzy_ignorecase = 1

" Impostazioni per TreeSitter
nnoremap <leader>t :TSHighlight<CR>

