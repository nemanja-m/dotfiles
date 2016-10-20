call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'raimondi/delimitmate'
Plug 'ervandew/supertab'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'elixir-lang/vim-elixir'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'godlygeek/tabular'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-surround'

call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

let mapleader=" "

" vim-airline settings
let g:airline_powerline_fonts = 1
let g:airline_detect_paste = 1
let g:airline#extensions#tabline#enabled = 1

" Use deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#max_list = 10

" Tabular shortcuts
if exists(":Tabularize")
  nmap <leader>a= :Tabularize /=<CR>
  vmap <leader>a= :Tabularize /=<CR>
  nmap <leader>a: :Tabularize /:\zs<CR>
  vmap <leader>a: :Tabularize /:\zs<CR>
endif

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
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)|deps|_build|vendor$'

" Ack
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
nmap <leader>a :Ack ""<Left>
nmap <leader>A :Ack <C-r><C-w>

" Nerd tree
map \ :NERDTreeToggle<CR>

" Close vim if NerdTree is only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Syntastic
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "▴"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vig-gitgutter
hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only = 1

" NerdCommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = "left"
let g:NERDTrimTrailingWhitespace = 1

" paste lines from unnamed register and fix indentation
nmap <leader>p pV`]=
nmap <leader>P PV`]=

set number
set numberwidth=4
set ruler
set cursorline
set scrolloff=3
set laststatus=2
set showcmd

syntax on
syntax enable

set hidden
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

" Folding defaults
set foldenable
set foldmethod=marker
set foldlevel=0
set foldcolumn=0

" Indentation
set autoindent
set cindent
set smartindent

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

nnoremap <silent> <BS> :TmuxNavigateLeft<CR>

" Delete empty space from the end of lines on every write
autocmd BufWritePre * :%s/\s\+$//e

set background=dark
let g:gruvbox_italic=1
let g:gruvbox_italicize_comments=1
colorscheme gruvbox

set guifont=Menlo\ for\ Powerline
set termguicolors
