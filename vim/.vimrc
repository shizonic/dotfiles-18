"*********************** Description **********************************
" 
"           Github:https://github.com/mohabaks/dotfiles
"           SpecialThanks:https://github.com/dougblack/dotfiles/.vimrc
"          
"
"**********************************************************************
python << EOF
import os
import re
path = os.environ['PATH'].split(';')

def contains_msvcr_lib(folder):
    try:
        for item in os.listdir(folder):
            if re.match(r'msvcr\d+\.dll', item):
                return True
    except:
        pass
    return False

path = [folder for folder in path if not contains_msvcr_lib(folder)]
os.environ['PATH'] = ';'.join(path)
EOF

" Vundle Settings{{{

"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-markdown'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'nvie/vim-flake8'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'jmcomets/vim-pony'
Plugin 'mjbrownie/vim-htmldjango_omnicomplete'
Plugin 'othree/html5.vim'
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'twe4ked/vim-colorscheme-switcher'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'itchyny/lightline.vim'
Plugin 'rdnetto/YCM-Generator'
Plugin 'sukima/xmledit'
Plugin 'klen/python-mode'
Plugin 'Raimondi/delimitMate'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'jez/vim-superman'
Plugin 'altercation/vim-colors-solarized'

"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

"}}}


" Set Colorscheme and Statusline{{{

set background=dark
colorscheme solarized

"" Status line
set t_Co=16 " 16, 18, and 256
"set laststatus=2 
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
      
"" Vim-airline
"let g:airline_theme='gruvbox'
"let g:airline_powerline_fonts = 2 " show powerline symbols
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:bufferline_echo = 0

"}}}


" Spaces & Tabs{{{

set tabstop=4             " number of visual spaces per TAB
set softtabstop=4         " number of spaces in tab when editing
set expandtab             " tabs are spaces

"}}}


" System clipboard{{{

"" cut/copy/paste to/from other application
set clipboard=unnamed     " access your system clipboard

"}}}


" Split Layouts{{{

"" specify different areas of the screen
set splitbelow
set splitright
"" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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
filetype indent on               " load filetype-specific indent files
set wildmenu                     " visual autocomplete for command menu
set lazyredraw                   " redraw only when we need to
set showmatch                    " highlight matching [{()}]

"}}}


" Searching{{{

set incsearch             " search as characters are entered
set hlsearch              " highight matches

"" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR> 

"}}}


"" Folding{{{

set foldenable            " enable folding
set foldlevelstart=10     " open most folds by default
set foldlevel=99
set foldnestmax=10        " 10 nested fold max

"" space open/closes folds
nnoremap <space> za
set foldmethod=indent     " fold based on indent level

"}}}


" Movement{{{

"" move vertically by visual line
nnoremap j gj
nnoremap k gk

"" move to beginning/end of line
nnoremap B ^
nnoremap E $

"" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

"" highlight last inserted text
nnoremap gV `[v`]


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


" Git Integration {{{


"}}}
 
 
" Python/Django IDE Setup {{{
 
"" Tab Settings
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

"" enable all Python syntax highlighting feautures
let python_highlight_all = 1

"" omnicompletion functions
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"" YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1       " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1                   " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1              " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1                      " Completion in comments
let g:ycm_complete_in_strings = 1                       " Completion in string
let g:ycm_global_ycm_extra_conf = '~/Code/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
"let g:ycm_python_binary_path = '/usr/bin/python3'

"" Ultisnips.vim
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>"             "List possible snippets based on current file

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

function! SuperCleverTab()
    if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
        return "\"
    else
        if &omnifunc != ''
            return "\\"
        elseif &dictionary != ''
            return "\"
        else
            return "\"
        endif
    endif
endfunction

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

fun! RelatedFile(file)
    #This is to check that the directory looks djangoish
    if filereadable(expand("%:h"). '/models.py') || isdirectory(expand("%:h") . "/templatetags/")
        exec "edit %:h/" . a:file
        let g:last_relative_dir = expand("%:h") . '/'
        return ''
    endif
    if g:last_relative_dir != ''
        exec "edit " . g:last_relative_dir . a:file
        return ''
    endif
    echo "Cant determine where relative file is : " . a:file
    return ''
endfun

fun SetAppDir()
    if filereadable(expand("%:h"). '/models.py') || isdirectory(expand("%:h") . "/templatetags/")
        let g:last_relative_dir = expand("%:h") . '/'
        return ''
    endif
endfun
autocmd BufEnter *.py call SetAppDir()

inoremap <Tab> <C-R>=SuperCleverTab()<cr>
    
 "}}}
 

" Java IDE Settings{{{

let g:EclimCompletionMethod = 'omnifunc'

"}}}


" Organization{{{
set modelines=1
" vim:foldmethod=marker:foldlevel=0
