" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" JavaScript plugins
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'neomake/neomake'
"Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive' " the ultimate git helper
" Initialize plugin system
call plug#end()
let g:spacevim_enable_guicolors=0
" Map leader to ,
let mapleader = ','
"NerdTree config
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NEDTreeDirArrows=1
" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeIgnore=['.git', '.swp', '.DS_Store', '\~$']
let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:airline_theme = "hybrid"
let g:airline_powerline_fonts = 1

" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window 
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

set background=dark
colorscheme hybrid_material

set cursorline       "hilight the line of the cursor
set timeoutlen=1000 ttimeoutlen=0
set nowrap           "no line wrapping
set laststatus=2 " show the satus line all the time

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
" eslint configuration
"let g:syntastic_always_populate_loc_list = 0 
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:neomake_javascript_enabled_makers = ['eslint']
call neomake#configure#automake('rw', 1000)
" Tab control
set noexpandtab " tabs ftw
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'

set clipboard=unnamed

"Setting relative line numbering
set number relativenumber
set nonumber norelativenumber  " turn hybrid line numbers off
set number! relativenumber!    " toggle hybrid line numbersk
