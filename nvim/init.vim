" Vim-Plug plugins. Run :PlugInstall to install!
call plug#begin(stdpath('data') . '/plugged')

" NERDTree
Plug 'preservim/nerdtree'

" Airline
Plug 'vim-airline/vim-airline'
" Airline Themes
Plug 'vim-airline/vim-airline-themes'

" Vim Rainbow
Plug 'frazrepo/vim-rainbow'

" Nerd Commenter
Plug 'preservim/nerdcommenter'

" Quantum Theme
Plug 'tyrannicaltoucan/vim-quantum'

call plug#end()

" Remap ;; to esc 
inoremap ;; <ESC>

" Allow powerline fonts
let g:airline_powerline_fonts = 1

" Set airline theme to deus
let g:airline_theme='quantum'

" Sets relative line numbering
" set relativenumber

" Set colorscheme
set background=dark
set termguicolors
colorscheme quantum

" Set to basic line numbering for Dr. Jamison :)
set number

" Fix indentation
map <F7> gg=G<C-o><C-o>
set smarttab
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
