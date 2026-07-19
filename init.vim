call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/preservim/nerdtree' ", {'on': 'NERDTreeToggle'}
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/tagbar', {'on': 'TagbarToggle'} " Tagbar for code navigation
Plug 'https://github.com/junegunn/fzf.vim' " Fuzzy Finder, Needs Silversearcher-ag for :Ag
Plug 'https://github.com/junegunn/fzf'
Plug 'https://github.com/navarasu/onedark.nvim'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'blazkowolf/gruber-darker.nvim'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/lepture/vim-jinja'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/matze/vim-move'
Plug 'voldikss/vim-floaterm'
Plug 'vim-python/python-syntax'
Plug 'alvan/vim-closetag'
Plug 'mofiqul/vscode.nvim'
Plug 'psf/black'

call plug#end()

set number
set relativenumber
set mouse=a
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set encoding=UTF-8
set visualbell
set scrolloff=5
set noswapfile

" CoC için gerekli ayarlar
set hidden
set updatetime=300
set signcolumn=yes

" :colorscheme onedark
:colorscheme vscode
let g:airline_theme='onedark'


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:python_highlight_all = 1

" Auto-close brackets
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :UndotreeToggle<CR>
nnoremap <Space>s :w<CR>
nnoremap <space>f mzggVG=`zzz


let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text'
    \]

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


nmap <F6> :TagbarToggle<CR>

" CoC Keybindings - Autocompletion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <silent><expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" CoC - Hatalara git
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" CoC - Tanıma git (Go to definition)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" CoC - Sembol yeniden adlandır
nmap <leader>rn <Plug>(coc-rename)
nnoremap <Space>b :Black<CR>

" CoC - Hover ile dokümantasyon göster
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" CoC - Code actions
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)


nnoremap <F3> :noh<CR>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz


let g:floaterm_width = 0.8
let g:floaterm_height = 0.8

" let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<C-b>'
nnoremap <F5> :w<CR>:FloatermNew --autoclose=0 python3 %<CR>


let g:coc_disable_startup_warning = 1

let g:python_highlight_all = 1


:map <MiddleMouse> <Nop>
:imap <MiddleMouse> <Nop>
:map <2-MiddleMouse> <Nop>
:imap <2-MiddleMouse> <Nop>
:map <3-MiddleMouse> <Nop>
:imap <3-MiddleMouse> <Nop>
:map <4-MiddleMouse> <Nop>
:imap <4-MiddleMouse> <Nop>

let g:user42 = 'cbozkurt'
let g:mail42 = 'cbozkurt@student.42kocaeli.com.tr'

" " Make background transparent
" autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE
" autocmd VimEnter * hi NonText guibg=NONE ctermbg=NONE
" autocmd VimEnter * hi LineNr guibg=NONE ctermbg=NONE
" autocmd VimEnter * hi SignColumn guibg=NONE ctermbg=NONE
" autocmd VimEnter * hi EndOfBuffer guibg=NONE ctermbg=NONE
