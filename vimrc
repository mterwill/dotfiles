" Load plugins via Pathogen
execute pathogen#infect()

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
set background=dark
colorscheme solarized

" Move around buffers
nmap <leader>. :bprevious<cr>
nmap <leader>/ :bnext<cr>

" Automatically delete trailing whitespace on certain filetypes
autocmd FileType c,cpp,javascript,ruby,php autocmd BufWritePre <buffer> :%s/\s\+$//e

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
    set undodir=~/.vim/undodir
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

" Quick word count
nmap <leader>wc g<C-g>
