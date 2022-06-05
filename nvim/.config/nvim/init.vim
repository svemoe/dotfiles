call plug#begin()
Plug 'freitass/todo.txt-vim'
Plug 'vimwiki/vimwiki'
call plug#end()

" Has to be the same!
set tabstop=4
set shiftwidth=4

set number
set list listchars=tab:>-,lead:.,trail:.
set copyindent
set colorcolumn=80

" Use persistent history.
if !isdirectory("/tmp/.vim-undo-dir")
    call mkdir("/tmp/.vim-undo-dir", "", 0700)
endif
set undodir=/tmp/.vim-undo-dir
set undofile

let g:vimwiki_list = [{'path': '~/documents/notes/wiki/'}]
