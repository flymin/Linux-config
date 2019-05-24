set t_Co=256
syntax enable
colorscheme delek
set nu
" mouse=n for normal type
" mouse=v for Visual mode
" mouse=i for Insert mode
" mouse=c for Command-line mode
" mouse=h for all previous modes when editing a help file
" mouse=a for all previous modes
set mouse=n

" For all key maps
map <F2> :NERDTreeToggle<CR>
map <F3> :set invnumber<CR>
set pastetoggle=<F4>
nmap <F5> :LLPStartPreview<cr>

" Plug-ins leaded on demand
call plug#begin('~/.vim/plugged')
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
" The NERDTree is a file system explorer for the Vim editor
Plug 'scrooloose/nerdtree',{ 'on': 'NERDTreeToggle' }
call plug#end()

" Settings for vim-latex-live-preview
let g:livepreview_previewer='evince'
autocmd Filetype tex setl updatetime=1

" Settings for NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | exe 'NERDTree' | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
