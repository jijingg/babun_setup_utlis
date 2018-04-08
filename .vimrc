set nu
set history=100
set ts=4
set ignorecase
colorscheme desert 
syntax on
"-----------------------------------------------------------"
source ~/.vundlerc
"-----------------------------------------------------------"
:imap <M-1> <C-O>lgt<ESC>
:imap <M-2> <C-O>lgt<ESC>
:imap <M-3> <C-O>lgt<ESC>
:nmap<C-S-tab> :tabprevious<cr>
:nmap<C-tab> :tabnext<cr>

imap <S-Enter> <ESC>o
imap <a-Enter> <right>
" imap <c-Enter> <ESC>O
imap <c-Enter> <right>
" imap <a-Enter> <Left>
" imap <s-\> <Left>
:nmap K    10k
:nmap L    l
:nmap J    10j
:nmap <c-h>  <c-w>h
:nmap <c-j>  <c-w>j
:nmap <c-k>  <c-w>k
:nmap <c-l>  <c-w>l
:nmap <space>   20j
:nmap <s-Space> 20k
"-----------------------------------------------------------"
"set t_ti= t_te=   "XTEM when close vim keep content on teminal
set ruler
set autoindent
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set list listchars=tab:>-
set virtualedit=all
"-----------------------------------------------------------"
"set undofile 
"set backup
"set noswapfile 
set noundofile  
set nobackup
set noswapfile 
"-----------------------------------------------------------"
" file type set for unkown file  
au BufRead,BufNewFile *.v,*.vh,*.sv,*.svh,*.svi set filetype=systemverilog 
au BufRead,BufNewFile .vundlerc set filetype=vim 
"-----------------------------------------------------------"
" Plugin commentary setting 
autocmd FileType python setlocal commentstring=#\ %s
autocmd FileType apache setlocal commentstring=#\ %s
autocmd FileType verilog setlocal commentstring=//\ %s
autocmd FileType systemverilog setlocal commentstring=//\ %s
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType tcl setlocal commentstring=#\ %s
autocmd FileType vhdl setlocal commentstring=--\ %s
autocmd FileType javascript setlocal commentstring=--\ %s  
"-----------------------------------------------------------"
" Plugin NERDTree setting 
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeWinSize=22
"-------------------------------------------------------------------