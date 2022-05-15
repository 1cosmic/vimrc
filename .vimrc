" Config made by cosm1c.
" Create 28 of April 2022."
"
"
"
"
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



call plug#begin('~/.vim/plugged')

" Install ansible plugin 

" Good Dops.
Plug 'scrooloose/nerdtree'              " NERDTree.
Plug 'liuchengxu/vista.vim'             " Review of classes, funcs & others.
Plug 'vim-airline/vim-airline'          " Airline.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }   " where is my file???
Plug 'junegunn/fzf.vim'                 " FZF

" Color Schemes.
Plug '/morhetz/gruvbox'
Plug '/sainnhe/sonokai'
Plug '/fcpg/vim-fahrenheit'
Plug 'srcery-colors/srcery-vim'
Plug 'pineapplegiant/spaceduck'
Plug '/sainnhe/gruvbox-material'
Plug 'nlknguyen/papercolor-theme'
Plug '/altercation/vim-colors-solarized'

" Code editing.
Plug 'tpope/vim-commentary'             " Comments lines with gcc / gc (Visual).
Plug 'jeetsukumaran/vim-pythonsense'    " PYTHON: supports to Python-text-object.
Plug 'Vimjas/vim-python-pep8-indent'    " PYTHON: automatic add indent in code.
Plug 'jiangmiao/auto-pairs'             " C++: autopairs.

" Code hacks.
Plug 'dense-analysis/ale'               " Asynchronous Lint Engine
Plug 'davidhalter/jedi-vim'             " add autocompletion to Python.

" Autocomplete:
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'pappasam/coc-jedi'                
Plug 'ycm-core/YouCompleteMe'           " YCM BROO!!!

call plug#end()

" === === === === === ===
" === === === === === ===
" === === === === === ===


" OTHER BASE SETTINGS:
syntax on
set nowritebackup                       " take off backups.
set nobackup

set cmdheight=2                         " CMD Heinght 1 line.
set encoding=utf-8                      " encoding of utf-8.
set number                              " show line numbers.

" INDENT (FOR PYTHON)
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" BEAUTY:
colorscheme PaperColor
set background=dark

" === === === === === ===
" === === === === === ===
" === === === === === ===











" Other Settings Block.
"
"
"
" MAPING KEY
"=== === === === === === === === === === === === === === === === === === ===
"=== === === === === === === === === === === === === === === === === === ===
"=== === === === === === === === === === === === === === === === === === ===
"=== === NORDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
"
"=== === Python Shotcuts.
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>     " execute cur. buffer.
"=== === === === === === === === === === === === === === === === === === ===
"=== === === === === === === === === === === === === === === === === === ===
"=== === === === === === === === === === === === === === === === === === ===
"
"
"
"
"
" ALE.
let g:ale_linters = {'python': 'all'}  " Python lint enable.
let g:ale_fixers = {'python': ['isort', 'yapf', 'remove_trailing_lines', 'trim_whitespace']}                                   " ???
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_completion_enabled = 0       " off autocomplete.

" POWERLINE BEAUTY.
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
 let g:airline_symbols = {}
 endif

 " unicode symbols
 let g:airline_left_sep = '»'
 let g:airline_left_sep = '▶'
 let g:airline_right_sep = '«'
 let g:airline_right_sep = '◀'
 let g:airline_symbols.linenr = '␊'
 let g:airline_symbols.linenr = '␤'
 let g:airline_symbols.linenr = '¶'
 let g:airline_symbols.branch = '⎇'
 let g:airline_symbols.paste = 'ρ'
 let g:airline_symbols.paste = 'Þ'
 let g:airline_symbols.paste = '∥'
 let g:airline_symbols.whitespace = 'Ξ'

 " airline symbols
 let g:airline_left_sep = ''
 let g:airline_left_alt_sep = ''
 let g:airline_right_sep = ''
 let g:airline_right_alt_sep = ''
 let g:airline_symbols.branch = ''
 let g:airline_symbols.readonly = ''
 let g:airline_symbols.linenr = ''

