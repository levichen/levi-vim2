syntax on
set number
set tabstop=4
set expandtab
set shiftwidth=4
set shiftround

" copy to clipboard
set clipboard=unnamed

set encoding=utf8
set nobomb
set nowrap
set hlsearch
"set mouse=nv
"set mouse=a
"set nocp

" for pathogen
 execute pathogen#infect()

" short key for nerdtree
nnoremap <silent> <F5> :NERDTreeToggle<CR>

" short key to close all tabs
nnoremap <silent> <F6> :qa<CR>

" change color cheme to molokai
colorscheme molokai
set t_Co=256
set background=dark
set guifont=Menlo\ Regular:h18
let Powerline_symbols = 'fancy'

" short key to switch tab (Ctrl+H, Ctrl+L to switch tab) 
map <C-H> <Esc>:tabprev<CR>
map <C-L> <Esc>:tabnext<CR>
imap <C-H> <Esc>:tabprev<CR>
imap <C-L> <Esc>:tabnext<CR>

""choose all page
map <C-A> ggVG
map <C-A> <Esc>ggVG

"choose code use tab to indent
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" cursor line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
"set cursorline 
set cursorline cursorcolumn

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" for air line
set laststatus=2

" for vim css color
let g:cssColorVimDoNotMessMyUpdatetime = 1

" short key for tag list
" must install tag list first 
" map <f9> :Tlist<CR>

" for fuzzy finder
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

filetype plugin on  
autocmd FileType javascrīpt set omnifunc=javascriptcomplete#CompleteJS  
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags  
autocmd FileType css set omnifunc=csscomplete#CompleteCSS  
autocmd FileType php set omnifunc=phpcomplete#CompletePHP  
autocmd FileType c set omnifunc=ccomplete#Complete  


" leader key for nerdcommenter
let mapleader=","
