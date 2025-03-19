let mapleader = "-"
let maplocalleader = ","

" Vimscript file settings ------ {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" FileType-specific settings ------ {{{
augroup file_type
	autocmd!
	autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
	autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
	autocmd FileType python :iabbrev <buffer> iff if:<left>
	autocmd FileType cpp,python :iabbrev <buffer> rtn return
augroup END
" }}}

" Basic Settings ------ {{{
set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set numberwidth=4
set showmatch
set laststatus=2
set foldlevelstart=99
" }}}

" Mappings ------ {{{
noremap <leader>- ddp
noremap <leader>_ ddkP
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <c-u> viwU<esc>
nnoremap H ^
nnoremap L $
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

inoremap <c-u> <esc>viwUi
inoremap jk <esc>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <right> <nop>
inoremap <left> <nop>
" }}}

vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>`<lv`>l
