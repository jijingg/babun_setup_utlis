set guifont=Consolas:h11
set encoding=utf-8
set ff=dos
au BufNewFile * set ff=unix
au BufRead    * set ff=unix
" --------------------------------------------------------------------
"  Maximize gvim windows when open gvim
if has('win32')      
    au GUIEnter * simalt ~x  
else      
    au GUIEnter * call MaximizeWindow()  
endif   
  
function! MaximizeWindow()      
    silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz  
endfunction  
" --------------------------------------------------------------------
