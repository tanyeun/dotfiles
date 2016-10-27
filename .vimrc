syntax on
set nu
set tabstop=4
" set hlsearch
set autoindent
set ruler

" Enable highlight to save temp settings
set viminfo^=! 

"show status bar, including the filename
set laststatus=2  

"Tab navigation
nnoremap tf  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

"Search for visually selected text
vnoremap // y/<C-R>"<CR>

" Pathogen
execute pathogen#infect()
filetype plugin indent on

" NERDtree
nnoremap <silent> <F5> :NERDTree<CR>

" Update/reload cscope DB
map <F6> :!cscope -b<CR>:cs reset<CR><CR> 

" Automatically save/load folds
au BufWinLeave * mkview
au BufWinEnter * silent loadview

colorscheme evening
