call plug#begin()

Plug 'junegunn/seoul256.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'preservim/nerdtree'
Plug 'ayu-theme/ayu-vim' " or other package manager
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'dense-analysis/ale'
call plug#end()

"...
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
silent! colorscheme ayu
"colo seoul256
"let g:seoul256_background = 233
"silent! colorscheme seoul256


set relativenumber
syntax on
set tabstop=4
set shiftwidth=4
set hidden

" Set complete options
set completeopt=menuone,noselect
set errorformat=%f:%l:%c:%m
let g:lsp_diagnostics_enabled = 0  
" Disable virtual text (inline error messages)
let g:ale_virtualtext_cursor = 0
let g:ale_virtualtext = 0

" Enable floating window for showing error when hovering over the line
let g:ale_hover_cursor = 1
let g:ale_floating_preview = 1       " Enable floating window previews

nnoremap <C-k> :NERDTreeToggle<CR>
nnoremap <C-z> <Nop>
nnoremap <C-y> <C-z>

" Enable hidden files in NERDTree
let NERDTreeShowHidden=1

" Optional: Customize the ignore list
let NERDTreeIgnore = ['\~$', '\.pyc$', '\.swp$']

