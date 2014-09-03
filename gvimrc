" Set font
if has("win32")
    set guifont=Consolas:h10
else
    set guifont=Inconsolata:h14
endif

" Set color scheme
set background=light
colorscheme solarized

" Enable the solarized ToggleBG command
call togglebg#map("")

" Remove toolbar, left scrollbar and right scrollbar
set guioptions-=T
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Maximize horizontal and vertical dimensions
set lines=999
set columns=9999

