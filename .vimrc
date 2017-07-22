"vundle configuration
set 	nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'syntastic'

"plugins must be added before this line
call vundle#end()

"syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_pylint_exe = 'pylint3' 
let g:syntastic_python_checkers = ['pep8', 'pylint']

syntax 	on
set	number
set	ruler
set	backspace=indent,eol,start
set	incsearch

set	autoindent
filetype plugin indent on

set	foldmethod=indent
set	foldlevel=1

"pep8
autocmd FileType python setlocal textwidth=79
autocmd FileType python set expandtab tabstop=4 softtabstop=4 shiftwidth=4
