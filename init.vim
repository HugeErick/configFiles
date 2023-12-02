" Erick Gonzalez Parada linux
set number 
set clipboard+=unnamedplus "wl-clipboard should work
set relativenumber
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set mouse=a
set spell "add to dicc zg
setlocal spell spelllang=es
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
" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

call plug#begin()

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

Plug 'lervag/vimtex' "in order to write latex
Plug 'https://github.com/aclements/latexrun'

"Vanilla Settings
" moves the current line up by one position
nnoremap <A-k> :m -2<CR>
" moves the current line down by one position
nnoremap <A-j> :m +1<CR>

set encoding=UTF-8
call plug#end()
filetype plugin indent on

" colorsitos uwu
colorscheme gruvbox 
syntax enable

" in order to toggle nerdtree
nnoremap <C-t> :NERDTreeToggle<CR>

"Latex config
let g:vimtex_view_general_viewer = 'atril'
let g:vimtex_compiler_method = 'arara'
let maplocalleader = ","
nnoremap <leader>ll :VimtexCompile<CR>
" above, i.e ,ll

inoremap <silent><expr> <c-space> coc#refresh()

set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
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

