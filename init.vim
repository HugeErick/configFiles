 "Erick Gonzalez Parada linux
set number 
set clipboard+=unnamedplus "wl-clipboard should work if not copy smthing outside vim
set relativenumber
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set mouse=a
"set spell "add to dicc zg, check sugestions z=
"setlocal spell spelllang=es "es = spanish
set nobackup
set nowritebackup
set noswapfile
set backspace=indent,eol,start
set title
set lazyredraw
set ttyfast
set history=999
set undolevels=999
set report=0
set scrolloff=4
set sidescrolloff=7
set sidescroll=1
set nohlsearch
set ttimeoutlen=100
" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

call plug#begin()

set encoding=UTF-8
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'ryanoasis/vim-devicons' "idk
Plug 'scrooloose/nerdtree' "nerdtree
Plug 'preservim/nerdcommenter' "idk
Plug 'neoclide/coc.nvim', {'branch': 'release'} "intellisense
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'jiangmiao/auto-pairs' "closing braces and parenthesis etc
Plug 'https://github.com/vim-python/python-syntax' "py syntax highlight
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/vim-airline/vim-airline-themes' "Airline themes 
Plug 'https://github.com/rafi/awesome-vim-colorschemes' "More awesome colorschemes
"in order to write latex
Plug 'lervag/vimtex'
Plug 'https://github.com/aclements/latexrun'

" have SQL syntaxis and functionalities
Plug 'tpope/vim-dadbod'

" Multiple cursors
Plug 'mg979/vim-visual-multi'

call plug#end()

"Vanilla Settings
nnoremap <C-k> :m -2<CR>
" moves the current line down by one position
nnoremap <C-j> :m +1<CR>
" Changes ctrl + v -> visual block to ctrl + b
nnoremap <C-B> <C-v>

filetype plugin indent on

" colorsitos uwu
colorscheme PaperColor
syntax enable


" in order to toggle nerdtree
nnoremap <C-t> :NERDTreeToggle<CR>

"Latex config
let g:vimtex_view_general_viewer = 'atril'
let g:vimtex_compiler_method = 'arara'
let maplocalleader = ","
nnoremap <leader>ll :VimtexCompile<CR>
" above, i.e ,ll to compile tex

inoremap <silent><expr> <c-space> coc#refresh()

set laststatus=2
" If powerline icons dont work the install powerline fonts to the terminal 
let g:airline_powerline_fonts = 1
"important line
let g:airline_theme='violet'
let g:airline#extensions#tabline#formatter = 'default'
let g:python_highlight_all=1 "just python highlight

" Make <CR> to accept selected completion item or notify coc.nvim to format
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" auto templates
if has("autocmd")
  augroup templates
    autocmd BufNewFile a.cpp 0r ~/.config/nvim/templates/cpp.tpl
    autocmd BufNewFile b.cpp 0r ~/.config/nvim/templates/cpp.tpl
    autocmd BufNewFile c.cpp 0r ~/.config/nvim/templates/cpp.tpl
    autocmd BufNewFile d.cpp 0r ~/.config/nvim/templates/cpp.tpl
    autocmd BufNewFile e.cpp 0r ~/.config/nvim/templates/cpp.tpl
    autocmd BufNewFile f.cpp 0r ~/.config/nvim/templates/cpp.tpl
    autocmd BufNewFile g.cpp 0r ~/.config/nvim/templates/cpp.tpl
		autocmd BufNewFile *.c 0r ~/.config/nvim/templates/c.tpl
  augroup END
endif

