call plug#begin('~/.vim/plugged')
" colors
Plug 'rafi/awesome-vim-colorschemes'
Plug 'junegunn/seoul256.vim'

" syntax
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" utils
Plug 'sjl/vitality.vim'

" tools
Plug '/usr/local/opt/fzf'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

let g:jsx_ext_required = 0
let g:vitality_fix_cursor = 0

set noswapfile
set number
set scrolloff=999
set hlsearch
set hidden
set tabstop=4
set shiftwidth=4

:au FocusLost * :wa

colorscheme nord

map <c-f> :FZF<cr>
map <s-h> ^
map <s-l> $
map <c-n> :botright 50vnew ~/documents/notes.txt<cr>
map <c-r> :NERDTreeToggle<cr>
map <c-w><c-m> <c-w><bar><c-w>_

imap jk <esc>
