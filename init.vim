 "Erick Gonzalez Parada linux
set number 
set clipboard+=unnamedplus "wl-clipboard should work if not copy smthing outside vim
set encoding=UTF-8
filetype plugin indent on
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

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType * setlocal formatoptions-=r formatoptions-=o


call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'} "intellisense
" :CocInstall coc-html
" :CocInstall coc-vetur
" :CocInstall @yaegassy/coc-tailwindcss3
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'preservim/nerdtree' "nerdtree file managment
Plug 'echasnovski/mini.nvim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'jiangmiao/auto-pairs' "closing pairs
Plug 'preservim/nerdcommenter' 
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/vim-python/python-syntax' "py syntax highlight
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/vim-airline/vim-airline-themes' "Airline themes 
Plug 'rebelot/kanagawa.nvim'
Plug 'https://github.com/rafi/awesome-vim-colorschemes' "More colorschemes
" latex
Plug 'lervag/vimtex'
Plug 'https://github.com/aclements/latexrun'
" misc
Plug 'tpope/vim-dadbod' " have SQL syntaxis and functionalities
Plug 'mg979/vim-visual-multi' " Multiple cursors
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons' "add dev icons
call plug#end()

"Vanilla Settings
nnoremap <C-k> :m -2<CR>
" moves the current line down by one position
nnoremap <C-j> :m +1<CR>
" Changes ctrl + v -> visual block to ctrl + b
nnoremap <C-B> <C-v>


" Theme
colorscheme kanagawa 
" vim.cmd("colorscheme kanagawa")
syntax enable
" If powerline icons dont work the install powerline fonts to the terminal 
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'
let g:airline#extensions#tabline#formatter = 'default'
let g:python_highlight_all=1 "just python highlight

" NerdTree config
nnoremap <C-t> :NERDTreeToggle<CR>

"Latex config
let g:vimtex_view_general_viewer = 'atril'
let g:vimtex_compiler_method = 'arara'
" ',ll' to compile tex
let maplocalleader = ","
nnoremap <leader>ll :VimtexCompile<CR>

" Coc config
" Make <CR> to accept selected completion item or notify coc.nvim to format
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <silent><expr> <c-space> coc#refresh()

" automatic templates
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

