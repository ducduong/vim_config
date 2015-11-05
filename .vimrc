set runtimepath^=~/.vim/bundle/ctrlp.vim

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'rking/ag.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'elixir-lang/vim-elixir'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'go.weekly.2012-03-13', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

"Plug 'bling/vim-airline'

Plug 'Junza/Spink'

Plug 'terryma/vim-expand-region'

Plug 'vim-ruby/vim-ruby'

Plug 'tpope/vim-rails'

Plug 'tpope/vim-fugitive'

Plug 'kchmck/vim-coffee-script'

Plug 'elixir-lang/vim-elixir'

Plug 'ervandew/supertab'

Plug 'bling/vim-airline'
Plug 'SirVer/ultisnips'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'isRuslan/vim-es6'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'

call plug#end()
"
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"autosave when lost focus
au FocusLost * :wa

" show buffers as tab - vim-airline
let g:airline#extensions#tabline#enabled = 1
" show only file name, no path
let g:airline#extensions#tabline#fnamemod = ':t'
"set foldmethod=syntax
filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab

let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$', '\.DS_Store$', '\.swo$']

let mapleader="\ "
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
"switch to slpit window
nnoremap <Leader>w <C-w>
nnoremap <Leader>n :NERDTree<CR>
nnoremap <leader>d "_d
" delete the current buffet without losing split window
nnoremap <Leader>- :bp<BAR>bd #<CR>
" open the previous buffet
nnoremap <Leader>b <C-^>
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" enter to insert blank line below cursor and stay in normal mode
nmap <CR> O<Esc>j

set backspace=2

set ruler

set cursorline

set autoindent

set mouse=a

set number

set laststatus=2

set hid

set showmatch
set mat=2

set textwidth=80
set nowrap linebreak nolist

set ignorecase
set smartcase
set incsearch
set hlsearch

" trim trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

syntax on
" theme settings
set background=light
"colorscheme railscasts1
let g:solarized_termcolors=256
"colo solarized
colo Tomorrow-Night-Eighties
"set t_Co=256

""
" INDENTATION
""

" use tabs, indent two (not four)
set tabstop=2 shiftwidth=2 expandtab

""
" FOLDING
""

" fold by indentation
set foldmethod=indent

" set deepest fold to 10 levels
set foldnestmax=10

" don't fold code by default
set nofoldenable

" set fold level to 1
set foldlevel=1

" set default fontsize
set gfn=monospace:h14

" two-space indentation for coffee
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

" folding by indentation fo coffee
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent
