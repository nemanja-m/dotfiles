call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
Plug 'mxw/vim-jsx'
Plug 'isRuslan/vim-es6'
Plug 'w0rp/ale'
Plug 'skywind3000/asyncrun.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" Delimitmate
let delimitMate_expand_cr = 1

" Enable JSX highlighting in js files
let g:jsx_ext_required = 0

" ALE
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0
let g:ale_linters = { 'javascript': ['eslint'] }

" Run JS prettier on save
autocmd BufWritePost *.js AsyncRun -post=edit eslint --fix %

" Tabular shortcuts
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a: :Tabularize /:\zs<CR>
nmap <leader>a<bar> :Tabularize /<bar><CR>
vmap <leader>a<bar> :Tabularize /<bar><CR>

" CtrlP
map <leader>f :CtrlP ./<CR>
map <leader>b :CtrlPBuffer<CR>
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)|deps|_build|vendor|node_modules$'

" Ack
let g:ackprg='ack-grep -H --nocolor --nogroup --column'
nmap <leader>a :Ack ""<Left>
nmap <leader>A :Ack <C-r><C-w>

" vig-gitgutter
hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only = 1

" Airline
" let g:airline_section_b = '%-0.10{getcwd()}'
let g:airline_section_z='%l/%L %-3.c'
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

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

" Delete empty space from the end of lines on every write
autocmd BufWritePre * :%s/\s\+$//e

" Clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<cr>

let mapleader=","

" Paste lines from unnamed register and fix indentation
nmap <leader>p pV`]=
nmap <leader>P PV`]=

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

" Support true color
set termguicolors

syntax on
syntax enable

" Color scheme
let g:gruvbox_italic=1
let g:gruvbox_italicize_comments=1

set background=dark
colorscheme gruvbox
