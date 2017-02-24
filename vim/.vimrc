"                                   
"   ░█░█░█▀▀░█░░░█▀▀░█▀█░█▄█░█▀▀░░░▀█▀░█▀█░░░█▄█░█░█░░░█░█░▀█▀░█▄█░█▀▄░█▀▀
"   ░█▄█░█▀▀░█░░░█░░░█░█░█░█░█▀▀░░░░█░░█░█░░░█░█░░█░░░░▀▄▀░░█░░█░█░█▀▄░█░░
"   ░▀░▀░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░░░░▀░░▀▀▀░░░▀░▀░░▀░░░░░▀░░▀▀▀░▀░▀░▀░▀░▀▀▀
"


" Vundle Settings{{{

"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'cespare/vim-toml'
Plugin 'kien/ctrlp.vim'
"Plugin 'rking/ag.vim'
Plugin 'mileszs/ack.vim'
"Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'groenewege/vim-less'
"Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'nvie/vim-flake8'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'jmcomets/vim-pony'
"Plugin 'mjbrownie/vim-htmldjango_omnicomplete'
Plugin 'othree/html5.vim'
Plugin 'PotatoesMaster/i3-vim-syntax'
"Plugin 'twe4ked/vim-colorscheme-switcher'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'itchyny/lightline.vim'
"Plugin 'rdnetto/YCM-Generator'
Plugin 'sukima/xmledit'
Plugin 'klen/python-mode'
Plugin 'Raimondi/delimitMate'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
"Plugin 'jez/vim-superman'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'nanotech/jellybeans.vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'lilydjwg/colorizer'
Plugin 'morhetz/gruvbox'
Plugin 'vim-perl/vim-perl'

call vundle#end()       
filetype plugin indent on  

"}}}


"  Set Colorscheme and Statusline{{{

set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

"" Status line
"set laststatus=2
set t_Co=256
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }
      
"}}}

                        
" UI Config {{{ 

"" These are options that changes random visuals in Vim
syntax on
set number                       " show line numbers
set showcmd                      " show command in bottom bar
set tw=79                        " width of document (used by gd)
set nowrap                       " don't automatically wrap on load
set smartindent
set colorcolumn=80
set visualbell                   " don't beep
set noerrorbells                 " don't beep
set autowrite                    " Save on buffer switch
set mouse+=a
set encoding=utf8
set cursorline                   " highlight current line
set lazyredraw                   " redraw only when we need to
set showmatch                    " highlight matching [{()}]
"set spell                        " Turn on spell checker
"set spellsuggest=5               " Limit the number of suggested words

"}}}


" Spaces & Tabs{{{

set tabstop=4             " number of visual spaces per TAB
set softtabstop=4         " number of spaces in tab when editing
set expandtab             " tabs are spaces

 "}}}


" System clipboard{{{

""cut/copy/paste to/from other application
set clipboard=unnamed     " access your system clipboard

" }}}

"  Split Layouts{{{

""specify different areas of the screen
set splitbelow
set splitright
""split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"}}}


" Searching{{{

set incsearch             " search as characters are entered
set hlsearch              " highight matches

"" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR> 

"}} } 


"" Folding{{{

set foldenable            " enable folding
set foldlevelstart=10     " open most folds by default
set foldlevel=99
set foldnestmax=10        " 10 nested fold max

"" space open/closes folds
nnoremap <space> za
set foldmethod=indent     " fold based on indent level

 "}}}


"  Movement{{{ 

"" easier moving of code blocks
"" Try to go into visual mode (v), thenselect several lines of code here and
"" then press ``>`` several times.
vnoremap < <gv              " better indentation
vnoremap > >gv              " better indentation

"}}


" Leader Shortcuts and Shortcuts{{{

let mapleader=","           " leader is comma

"" jk is escape
inoremap jk <esc>

"" quicksave command
noremap  <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

"}}}


" CtrlP settings{{{

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

"}}}


" File Browsing{{{

"" Open NERDTree when no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

"" hide .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"}}}


"Buffer Navigation {{{

"" Ctrl Left/h & Right/l cycle between buffers
noremap <silent> <C-left> :bprev<CR>
noremap <silent> <C-h> :bprev<CR>
noremap <silent> <C-right> :bnext<CR>
noremap <silent> <C-l> :bnext<CR>

"" <Leader>q Closes the current buffer
nnoremap <silent> <Leader>q :Bclose<CR>

"" <Leader>Q Closes the current window
nnoremap <silent> <Leader>Q <C-w>c

" }}}


" Commenting blocks of code{{{

autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

 "}}}


" Backups{{{

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

"}}} 


" Git  Integration {{{


"}}}


" Match Valid Ip Address {{{

syn match ipaddr /\(\(25\_[0-5]\|2\_[0-4]\_[0-9]\|\_[01]\?\_[0-9]\_[0-9]\?\)\.\)\{3\}\(25\_[0-5]\|2\_[0-4]\_[0-9]\|\_[01]\?\_[0-9]\_[0-9]\?\)/
hi link ipaddr Identifier

" }}}
 
" Python/Django  IDE Setup {{{
 
"" Tab Settings
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

"" enable all Python syntax highlighting feautures
let python_highlight_all = 1


"" YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1       " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1                   " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1              " Completion for programming language's keyword
let g:ycm_complete_in_comments = 0                      " Completion in comments
let g:ycm_complete_in_strings = 0                       " Completion in string
let g:ycm_global_ycm_extra_conf = '~/Code/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_python_binary_path = '/usr/bin/python3'

"" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

"" Django Settings
if filereadable($VIRTUAL_ENV . '/.vimrc')
         source $VIRTUAL_ENV/.vimrc
endif
au FileType htmldjango set omnifunc=htmldjangocomplete#CompleteDjango
let g:htmldjangocomplete_html_flavour = 'html5'
"let g:django_projects = '~/Code/Projects/Django' "Sets all projects under django
let g:django_activate_virtualenv = 1 "Try to activate the associated virtualenv
let g:django_activate_nerdtree = 1 "Try to open nerdtree at the project root.
let g:htmldjangocomplete_html_flavour = 'html5' "Set html flavour
au FileType htmldjango inoremap {% {% %}<left><left><left>
au FileType htmldjango inoremap {{ {{ }}<left><left><left>

let g:last_relative_dir = ''
nnoremap \1 :call RelatedFile ("models.py")<cr>
nnoremap \2 :call RelatedFile ("views.py")<cr>
nnoremap \3 :call RelatedFile ("urls.py")<cr>
nnoremap \4 :call RelatedFile ("admin.py")<cr>
nnoremap \5 :call RelatedFile ("tests.py")<cr>
nnoremap \6 :call RelatedFile ( "templates/" )<cr>
nnoremap \7 :call RelatedFile ( "templatetags/" )<cr>
nnoremap \8 :call RelatedFile ( "management/" )<cr>
nnoremap \T :e templates/<cr>
nnoremap \0 :e settings.py<cr>
nnoremap \9 :e urls.py<cr>
    
 "}}} 
 

" Java IDE Settings{{{

let g:EclimCompletionMethod = 'omnifunc'
 
"}}}


" Organization{{{
set modelines=1
" vim:foldmethod=marker:foldlevel=0
