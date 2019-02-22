" ===== PLUGINS =====

" Use the lines below to add plugins
call plug#begin()
Plug 'rakr/vim-one'
"Plug 'tpope/vim-sensible'
call plug#end()


" ===== OPTIONS =====

" Set color scheme
syntax on
set background=dark
colorscheme one

" Display the cursor position on the last line of the screen or in the status line of a window
set ruler

" Display line numbers at left-hand side
set number

" number of visual spaces per TAB
set tabstop=4

" convert tabs to spaces
set expandtab
 
" ===== MAPPINGS =====

" Exit insert mode
inoremap jj <ESC>

" Paste onto newline
nnoremap ,p o<Esc>p


" ===== SYNTAX =====
" Syntax for snakemake
" This requires the file found at
" https://bitbucket.org/snakemake/snakemake/raw/master/misc/vim/syntax/snakemake.vim
" to be found in ~/.vim/syntax
au BufNewFile,BufRead Snakefile set syntax=snakemake
au BufNewFile,BufRead *.smk set syntax=snakemake

" ===== Configure Netrw =====

" Improve behavior of Netrw
let g:netrw_liststyle=3 "tree-like structure
let g:netrw_banner=0 "remove useless banner
let g:netrw_winsize=25 "Shrink pane
"let g:netrw_browse_split=2 "open selected files in vertical splits
"let g:netrw_altv=1 "open explorer as left split
"let g:netrw_list_hide='^.'
"let g:netrw_hide=1
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
" Per default, netrw leaves unmodified buffers open. This autocommand
" deletes netrw's buffer once it's hidden (using ':q', for example)
"autocmd FileType netrw setl bufhidden=delete
