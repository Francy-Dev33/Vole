set termguicolors
hi Normal guibg=none
hi Menu guibg=#222222 guifg=#ffffff
hi Pmenu guibg=#444444 guifg=#ffffff
hi PmenuSel guibg=#005f5f guifg=#ffffff
hi Cursor guibg=#ffffff guifg=#000000
hi CursorLine guibg=#333333
set background=dark

if !exists('g:colors_name') || g:colors_name != 'gruvbox'
    echo "Il tema Gruvbox non C( installato."
    finish
endif

if !isdirectory(expand('~/.vim/autoload/airline')) || !isdirectory(expand('~/.vim/autoload/lightline'))
    echo "Le cartelle Airline o Lightline non sono presenti."
    finish
endif

let s:menu_options = ['Seleziona tema Gruvbox', 'Esci']

function! ShowMenu()
    echo "LazyVim - Gestione Temi e Impostazioni"
    echo ""
    for i in range(len(s:menu_options))
        echo i+1 . '. ' . s:menu_options[i]
    endfor
    let choice = input("Seleziona un'opzione: ")
    call ProcessChoice(choice)
endfunction

function! ProcessChoice(choice)
    if a:choice == 1
        call ChooseTheme()
    elseif a:choice == 2
        echo "Ciao!"
        finish
    else
        echo "Scelta non valida."
    endif
endfunction

function! ChooseTheme()
    let theme = input("Seleziona il tema (light/dark): ")
    if theme == 'light'
        colorscheme gruvbox_light
    elseif theme == 'dark'
        colorscheme gruvbox_dark
    else
        echo "Tema non valido."
    endif
endfunction

call ShowMenu()

