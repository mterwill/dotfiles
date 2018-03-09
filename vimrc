set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/goyo.vim'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-sensible'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/fzf.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'junegunn/vim-easy-align'
Plugin 'nathangrigg/vim-beancount'
Plugin 'StanAngeloff/php.vim'
Plugin 'tpope/vim-rhubarb'

call vundle#end()
filetype plugin indent on

" Set leader to comma
let mapleader=","

" Enable syntax highlighting
syntax on

" Enable filetype detection. Disabled by default on some Linux distros.
filetype plugin indent on

" Enable Airline (statusbar)
let g:airline#extensions#tabline#enabled=1

" Display line numbers
set number

" Set a visual indicator for line wrap
set colorcolumn=80

" To enable the full solarized colorscheme, touch this file.
" Otherwise, smart default to the reduced colorscheme.
if empty(glob("~/.vim/solarized"))
    let g:solarized_termcolors=256
endif

" Set up solarized colorscheme
let &background = $VIMBG
silent! colorscheme solarized

" Move around buffers
nmap <leader>. :bprevious<cr>
nmap <leader>/ :bnext<cr>

" Automatically delete trailing whitespace on certain filetypes
" autocmd FileType c,cpp,javascript,ruby,php autocmd BufWritePre <buffer> :%s/\s\+$//e

" Map a shortcut to delete trailing whitespace
nmap <leader>ws :%s/\s\+$//e<cr>

" Set document width to 80 characters, but don't autowrap
set textwidth=80
set nowrap

" Show 7 lines above/below the cursor
set scrolloff=7

" Case insensitive search for lowercase query, case sensitive for mixed case
set ignorecase
set smartcase

" Highlight search results
set hlsearch

" Turn off backups/swap files, I find them useless/annoying.
set nobackup
set nowritebackup
set noswapfile

" Switch buffers without saving
set hidden

" Use 4 spaces instead of 1 tab
set shiftwidth=4
set tabstop=4
set expandtab

" Use spacebar to search
nmap <space> /

" Disable highlights from search via ,<enter>
nmap <silent> <leader><cr> :noh<cr>

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
set viminfo^=%

" Pressing ,ss will toggle and untoggle spell checking
nmap <leader>ss :setlocal spell!<cr>

" Fast edit vimrc
nmap <leader>e :e ~/.vimrc<cr>

" Persistent undo history
try
    set undodir=~/.logs/vim-undodir
    set undofile
catch
endtry

" Goyo (distraction free editing) shortcut
nmap <silent> <leader>zz :Goyo<cr>

" Disable obnoxious error bells
set noerrorbells visualbell t_vb=

" Tab auto-insert
nmap <Tab> i<Tab>

" Copy/paste to system clipboard
nmap <leader>yy "*yy
vmap <leader>yy "*y
nmap <leader>dd "*dd
vmap <leader>dd "*d
map <leader>PP "*P
map <leader>pp "*p

" Fast saving
nmap <leader>w :w<cr>
imap <leader>ww <esc>:w<cr>

" Change working directory to current file path
nmap <leader>cd :cd %:p:h<cr>

" Ruby two spaces
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2
autocmd Filetype beancount setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2

" Switch 0 and ^
nnoremap 0 ^
nnoremap ^ 0

" Stop vim-markdown and vim-beancount from folding
let g:vim_markdown_folding_disabled = 1
let g:vim_beancount_folding_disabled = 1

" Remap Y to be consistent with D, C, etc
nmap Y y$

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

" Q normally drops you into Ex mode. Nobody wants that. 
map Q <Nop>

command Cdgit :cd `git rev-parse --show-toplevel`

set nofoldenable

" allow setting a light background via env variable
if !empty($LIGHT_COLORS)
    set bg=light
endif

" Used to use Ctrl-P but switched to fzf for better days
nmap <c-p> :GFiles<cr>

" for tpope/vim-rhubarb
let g:github_enterprise_urls = ['https://git.rsglab.com']
