syntax on
set nu
set tabstop=4
set shiftwidth=2
set softtabstop=2
set hlsearch
set mouse-=a
set laststatus=2
set autoindent
set history=100
set ruler

if &diff 
 color diffscheme
endif

nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

