" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'kristijanhusak/vim-hybrid-material'
"Plug 'kadekillary/subtle_solo'
Plug 'aradunovic/perun.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'cloudhead/neovim-fuzzy'
" JavaScript plugins
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'SirVer/ultisnips'
Plug 'ruanyl/vim-fixmyjs'
Plug 'honza/vim-snippets'
Plug 'neomake/neomake'
Plug 'jaawerth/neomake-local-eslint-first'
"Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive' " the ultimate git helper
" Json file to show the quotes
let g:vim_json_syntax_conceal = 0
" Reads when file changes
set autoread 
" Initialize plugin system
call plug#end()
let g:spacevim_enable_guicolors=0
let g:airline#extensions#tabline#enabled=1
"let g:airline#extensions#tabline#formatter='unique_tail'
" Map leader to ,
let mapleader = ','
imap jj <ESC>
" nmap <silent> <leader>k :Explore<cr>
" NerdTree config
 let NERDTreeShowHidden=1
 let NERDTreeMinimalUI=1
 let NEDTreeDirArrows=1
" Toggle NERDTree
 nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
 nmap <silent> <leader>y :NERDTreeFind<cr>

" make YCM compatible with UltiSnips 
let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_key_list_previous_completion = ['<C-p>']

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"

nmap <C-p> :FuzzyOpen<cr>
nmap <C-s> :w<cr>
imap <C-s> <C-o>:w<cr>

map <leader>ev :e! ~/.config/nvim/init.vim<cr>

" Strict mode to make vim habit better
nnoremap <Left> :echo "No left for you!"<CR>
nnoremap <Right> :echo "No Right for you!"<CR>
nnoremap <Up> :echo "No Up for you!"<CR>
nnoremap <Down> :echo "No Down for you!"<CR>

inoremap <Left> <C-o>:echo "No left for you!"<CR>
inoremap <Right> <C-o>:echo "No Right for you!"<CR>
inoremap <Up> <C-o>:echo "No Up for you!"<CR>
inoremap <Down> <C-o>:echo "No Down for you!"<CR>

" Using tab shortcut
nnoremap <C-k> :bnext<CR>
nnoremap <C-j> :bprevious<CR>
nnoremap <C-x> :bdelete<CR>

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Ignored"   : '☒',
    \ "Unknown"   : "?"
    \ }
" let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeQuitOnOpen=1
let g:NERDTreeIgnore=['.git$[[dir]]', '.swp', '.DS_Store', '\~$']
let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:airline_theme = "hybrid"
let g:airline_powerline_fonts = 1
let g:indentLine_char = '┆'

" Start autocompletion after 2 chars
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window 
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

"set background=dark
"colorscheme hybrid_material
"colorscheme subtle_dark
colorscheme perun
set termguicolors

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
call neomake#configure#automake('nrwi', 500)
" Tab control
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set clipboard=unnamed

"Setting relative line numbering
set number relativenumber
set nonumber norelativenumber  " turn hybrid line numbers off
set number! relativenumber!    " toggle hybrid line numbersk
