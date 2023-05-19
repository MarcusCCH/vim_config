"-------
"6. Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'joshdick/onedark.vim'
Plugin 'tpope/vim-commentary'
Plugin 'hkupty/iron.nvim'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-line'
Plugin 'GCBallesteros/vim-textobj-hydrogen'
Plugin 'GCBallesteros/jupytext.vim'

Plugin 'sirver/ultisnips'
Plugin 'dylanaraps/wal'
Plugin 'scrooloose/nerdtree'
"vimtex
Plugin 'lervag/vimtex'
Plugin 'matze/vim-tex-fold'

call vundle#end()

"7. Config vundle 
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_class_scope_highlight = 1


				
"----------------------------------------------------------------
" 4. User interface
" FILE PLUGIN
filetype plugin indent on
"Set X lines to the cursor when moving vertically
set scrolloff=0

set tabstop=2 softtabstop=2

set shiftwidth=2

set smartindent
syntax on
syntax enable
set smartcase
"Always show mode
set showmode

" Show command keys pressed
set showcmd

" Enable the WiLd menu
set wildmenu

" Show the current position
set ruler

" Command bar height
set cmdheight=2

" Backspace works on Insert mode
set backspace=eol,start,indent

" Don't redraw while executing macros ()
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set matchtime=2

" No annoying sound on errors
set noerrorbells
set novisualbell


set mouse=a

" Highlight cursor line and cursor column
set cursorline
set nocursorcolumn

" Always show the status line
set laststatus=2


" Autoread a file when it is changed from the outside
set autoread

" Reload a file when it is changed from the outside
let g:f5msg = 'Buffer reloaded.'
nnoremap <F5> :e<CR>:echo g:f5msg<CR>

" Enable filetype plugins
" Hybrid line number
set number relativenumber

set nu rnu
colorscheme onedark

" set guifont=FixedSys\ Excelsior\ 3.01:h16


"4. latex ----------------------------------------------------------
let g:tex_flavor = 'latex'
let g:Tex_DefaultTargetFormat='pdf'

let g:vimtex_view_method = 'skim'
let g:vimtex_compiler_method = 'latexmk'
" let g:tex_flavor = 'latex'

"----------------------------------------------------------------
"5. Run files
autocmd FileType cpp nnoremap ( :!g++ -std=c++20 -o %< % && ./%<
autocmd FileType c  nnoremap ( :!gcc -o %< % && ./%< <CR>
autocmd FileType python  nnoremap ( :!python3 -u % <CR>
autocmd filetype javascript  nnoremap ( :!node % <CR>
autocmd filetype java  nnoremap ( :!javac % && java %:r <Enter>

"6. Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"7. Nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
