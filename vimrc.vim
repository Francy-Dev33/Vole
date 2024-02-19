ure files are read as what I want:
let g:vimwiki_extsyntax = {' Rmd': 'markdown', 'rd': 'markdown',' md': 'markdown',
let g:vimwiki_list = ['path': '-/vimwiki', 'syntax': 'markdown',
'ext,':
md ' }]
autocd BufRead, BufNewFile /mp/calcurse*,~/.calcurse/notes/* set filetype=markdown automd BufRead,BufNewFile *.ms,*.me,*.mom,* man set filetype=groff
autocd BufRead, BufNewFile * tex set filetype=tex
" Automatically cd into the directory that the file is in autocd BufEnter * execute "chdir "
escape (expand ("%:p:h"), '.')
Copy selected text to system clipboard (requires gvim/nvim/vim-xll installed):
vnoremap <C-c> "+y
тар <C-p> "+Р
'markdown'
'markdown' mdown':

'markdown'}
