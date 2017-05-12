call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-ruby/vim-ruby'
Plug 'elixir-lang/vim-elixir'
Plug 'morhetz/gruvbox'
Plug 'yggdroot/indentline'
Plug 'airblade/vim-gitgutter'
Plug 'raimondi/delimitmate'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'isRuslan/vim-es6'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'renderedtext/vim-bdd'
Plug 'renderedtext/vim-elixir-alternative-files'

call plug#end()

set number
set numberwidth=4
set ruler
set scrolloff=3
set laststatus=2
set showcmd
set hidden

" Whitespace
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab

" Searching
set ignorecase
set smartcase

" Disable Backup or swap files
set nobackup
set nowritebackup
set noswapfile

" Indentation
set autoindent
set cindent
set smartindent

" Faster redrawing
set lazyredraw

" Delete empty space from the end of lines on every write
autocmd BufWritePre * :%s/\s\+$//e

" Clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<cr>

" Hack nvim to support tmux-navigator
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>

let mapleader=","

inoremap jj <Esc>

" Paste lines from unnamed register and fix indentation
nmap <leader>p pV`]=
nmap <leader>P PV`]=

syntax on
syntax enable

" Disable cursor keys in normal mode
map <Left>  :echo "Use h!"<CR>
map <Right> :echo "Use l!"<CR>
map <Up>    :echo "Use k!"<CR>
map <Down>  :echo "Use j!"<CR>

" Indent selected code without unselecting
vmap > >gv
vmap < <gv
vmap = =gv

" Splits
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>

" Delimitmate
let delimitMate_expand_cr = 1

" JSX config
let g:jsx_ext_required = 0

" Tabular shortcuts
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a: :Tabularize /:\zs<CR>
nmap <leader>a<bar> :Tabularize /<bar><CR>
vmap <leader>a<bar> :Tabularize /<bar><CR>

" CtrlP
map <leader>ga :CtrlP app<CR>
map <leader>gv :CtrlP app/views<CR>
map <leader>gc :CtrlP app/controllers<CR>
map <leader>gm :CtrlP app/models<CR>
map <leader>gh :CtrlP app/helpers<CR>
map <leader>gj :CtrlP app/assets/javascripts<CR>
map <leader>gf :CtrlP features<CR>
map <leader>gs :CtrlP spec<CR>
map <leader>gt :CtrlP test<CR>
map <leader>gl :CtrlP lib<CR>
map <leader>f :CtrlP ./<CR>
map <leader>b :CtrlPBuffer<CR>
map <leader>gd :e db/schema.rb<cr>
map <leader>gr :e config/routes.rb<cr>
map <leader>gg :e Gemfile<cr>

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)|deps|_build|vendor|node_modules$'

" Ack
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
nmap <leader>a :Ack ""<Left>
nmap <leader>A :Ack <C-r><C-w>

" vig-gitgutter
hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only = 1

" Airline
let g:airline_left_sep=""
let g:airline_right_sep=""
let g:airline_section_x=""
let g:airline_section_y=""
let g:airline_section_z="%l/%L %-3.c"
let g:airline_theme="gruvbox"

" Support true color
set termguicolors

" Color scheme
let g:gruvbox_italic=1
let g:gruvbox_italicize_comments=1

set background=dark
colorscheme gruvbox
