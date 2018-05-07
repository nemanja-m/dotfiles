call plug#begin('~/.config/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'
Plug 'mxw/vim-jsx'
Plug 'mileszs/ack.vim'
Plug 'morhetz/gruvbox'
Plug 'python-mode/python-mode'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'yggdroot/indentLine'
Plug 'zchee/deoplete-jedi'

call plug#end()

let mapleader = ','

" Set new vorizontal and vertical positions
set splitright
set splitbelow

" Don't show preview window on autocompletion
set completeopt-=preview

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

" Support true color
set termguicolors

filetype plugin indent on
syntax on

" Start autocompletion
let g:deoplete#enable_at_startup = 1

" Enable JSX highlighting in js files
let g:jsx_ext_required = 0

" Delimitmate
let g:delimitMate_expand_cr = 1

" ALE
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8']
\}
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'python': ['autopep8']
\}

let g:python_host_prog='/usr/bin/python'
let g:python3_host_prog='/usr/bin/python3'

" python-mode
let g:pymode_python = 'python3'
let g:pymode_breakpoint_cmd = 'ipdb'
let g:pymode_options_colorcolumn = 0
let g:pymode_indent = 0
let g:pymode_folding = 0
let g:pymode_syntax_indent_errors = 0
let g:pymode_syntax_space_errors = 0

" Find definition
let g:pymode_rope_goto_definition_bind = '<leader>fd'
let g:pymode_rope_goto_definition_cmd = 'vnew'

" Refactoring
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_rename_bind = '<leader>rr'
let g:pymode_rope_rename_module_bind = '<leader>r1r'
let g:pymode_rope_organize_imports_bind = '<leader>ro'

" Turn off code checking
let g:pymode_lint = 0
let g:pymode_lint_on_write = 0

autocmd BufEnter __run__,__doc__ :wincmd L
autocmd FileType make setlocal noexpandtab

" vig-gitgutter
hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only = 1

" Airline
let g:airline_section_z='%l/%L %-3.c'
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

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

" Delete empty space from the end of lines on every write
autocmd BufWritePre * :%s/\s\+$//e

" Clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<cr>

" Paste from clipboard and fix indentation
nmap <leader>p "+pV`]=<ESC>
nmap <leader>P "+PV`]=<ESC>

" Copy to clipboard
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>yy "+yy

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

" Color scheme
try
  let g:gruvbox_italic=1
  let g:gruvbox_italicize_comments=1
  set background=dark
  colorscheme gruvbox
catch
  " nop
endtry
