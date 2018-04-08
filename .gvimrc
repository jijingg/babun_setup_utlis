set guifont=Consolas:h11
" --------------------------------------------------------------------
if has('win32')      
    au GUIEnter * simalt ~x  
else      
    au GUIEnter * call MaximizeWindow()  
endif   
  
function! MaximizeWindow()      
    silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz  
endfunction  
" --------------------------------------------------------------------
