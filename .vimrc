syntax on
set nu
set tabstop=4
set autoindent
set shiftwidth=2
set softtabstop=2
set mouse-=a
set laststatus=2
set history=100
set ruler
set foldmethod=manual
set pastetoggle=<F7>
set hlsearch

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

if &diff 
 color diffscheme
endif

"Search for visually selected text
vnoremap // y/<C-R>"<CR>

" Pathogen
execute pathogen#infect()
filetype plugin indent on

" NERDtree
nnoremap <silent> <F5> :NERDTreeToggle<CR>

" Update/reload cscope DB
map <F6> :!cscope -b<CR>:cs reset<CR><CR> 

" Fugitive - git wrapper
nnoremap gb  :Gblame<CR>

" Automatically save/load folds
au BufWinLeave * mkview
au BufWinEnter * silent loadview

" Trinity
" Open and close all the three plugins on the same time 
nmap <F8>  :TrinityToggleAll<CR> 

" Open and close the Source Explorer separately 
nmap <F9>  :TrinityToggleSourceExplorer<CR> 

" Open and close the Taglist separately 
nmap <F10> :TrinityToggleTagList<CR> 

" Open and close the NERD Tree separately 
nmap <F11> :TrinityToggleNERDTree<CR> 

colorscheme murphy 
