syntax on
set nu
set tabstop=4
set hlsearch
set autoindent
set ruler

nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Pathogen
execute pathogen#infect()
filetype plugin indent on

" NERDtree
nnoremap <silent> <F5> :NERDTree<CR>

" Update/reload cscope DB
map <F6> :!cscope -b<CR>:cs reset<CR><CR> 

colorscheme evening
