call plug#begin('~/.config/nvim/plugged')

" --- Making Vim look good
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'raimondi/delimitmate'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-scripts/a.vim'

call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Gruvbox settings
set background=dark
let g:gruvbox_italic=1
let g:gruvbox_italicize_comments=1
colorscheme gruvbox

" vim-airline settings
let g:airline_powerline_fonts = 1               " Fancy arrow symbols
let g:airline_detect_paste = 1                  " Show PASTE if in paste mode
let g:airline#extensions#tabline#enabled = 1    " Enable airline for tabs

" Nerd tree
map <C-n> :NERDTreeToggle<CR>                   " Open/Close NerdTree on CTRL + n

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

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" vig-gitgutter
hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only = 1

" NerdCommenter
let g:NERDSpaceDelims=1   " Add space after comment
let g:NERDCompactSexyComs=1  " Use compact syntax for pretty multi-line comments
let g:NERDDefaultAlign="left"
let g:NERDTrimTrailingWhitespace=1

set number
set numberwidth=4
set ruler
set cursorline
set scrolloff=3
set laststatus=2
set showcmd

syntax on
syntax enable

set hidden	       	" Allow bacgrounding buffers without writing them

set nowrap				  " Don't wrap lines
set tabstop=2				" Tab is two spaces
set shiftwidth=2	  " Autoindent is two spaces
set expandtab				" Use spaces instead of tabs

" Searching
set ignorecase			" Searches are case insensitive
set smartcase				" Unless they contain at least one capital letter

let mapleader=" "

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

" Delete empty space from the end of lines on every write
autocmd BufWritePre * :%s/\s\+$//e

" Set FileTypes
au BufRead,BufNewFile *.tpp set filetype=cpp

set guifont=Menlo\ for\ Powerline
set termguicolors
