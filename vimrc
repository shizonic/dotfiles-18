"""""""""""""""""""""""""""""""""""""""""""""""""
" Author:Mohammed Bakari
" github:https://github.com/mohabaks/
"
"""""""""""""""""""""""""""""""""""""""""""""""""

"Launch Config {{{
call pathogen#infect()                    " use pathogen
" }}}

"colors {{{
""""""""""""""
  set background=dark
  colorscheme hybrid
  
" }}}

"Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
"}}}

" System clipboard {{{
"""""""""""""""""""""""
"cut/copy/paste to/from other application
set clipboard=unnamed " access your system clipboard
" }}}

" Quicksave command {{{
"""""""""""""""""""""""""""""
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>
" }}}

""  Split Layouts {{{
"""""""""""""""
"specify different areas of the screen
set splitbelow
set splitright
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}

"UI Config {{{
""""""""""""""""""""""""""""
"These are options that changes random visuals in Vim
set number " show line numbers
set showcmd " show command in bottom bar
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set colorcolumn=80
highlight ColorColumn ctermbg=233
set smartindent
filetype plugin on     " try to detect filetypes
filetype plugin indent on  " enable loading indent file for filetype
set visualbell           " don't beep
set noerrorbells         " don't beep
set autowrite  "Save on buffer switch
set mouse+=a
set cursorline " highlight current line
filetype indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to
set showmatch  " highlight matching [{()}]
" }}}

"Searching {{{
"""""""""""""""""""""""
set incsearch " search as characters are entered
set hlsearch  " highight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR> 
" }}}

"" Folding {{{
"""""""""""""""
set foldenable  " enable folding
set foldlevelstart=10 " open most folds by default
set foldlevel=99
set foldnestmax=10 " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent " fold based on indent level
" }}}

"Movement {{{
""""""""""""""""
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" highlight last inserted text
nnoremap gV `[v`]

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation
" }}}

" Leader Shortcuts {{{
let mapleader="," " leader is comma
"jk is escape
inoremap jk <esc>
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" save session
nnoremap <leader>s :mksession<CR>
" open ag.vim a.k.a the_silver_searcher
nnoremap <leader>a :Ag
" }}}

" CtrlP settings {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" }}}


" File Browsing {{{
""""""""""""""""""""""
" Open NERDTree when no files are specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
" hide .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" }}}

"Buffer Navigation {{{
" Ctrl Left/h & Right/l cycle between buffers
noremap <silent> <C-left> :bprev<CR>
noremap <silent> <C-h> :bprev<CR>
noremap <silent> <C-right> :bnext<CR>
noremap <silent> <C-l> :bnext<CR>

" <Leader>q Closes the current buffer
nnoremap <silent> <Leader>q :Bclose<CR>

" <Leader>Q Closes the current window
nnoremap <silent> <Leader>Q <C-w>c
" }}}

" VimAirLine {{{
set t_Co=16 "256
set laststatus=2 
let g:airline_theme='term'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
let g:airline_powerline_fonts = 2 " show powerline symbols
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
" }}}

" Commenting blocks of code.}}}
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
"}}}

" Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}

" Git Integration {{{
"""""""""""""""""""""""""
"}}}


""""""""""""""""""""""""""""" 
" 
" Python/Django IDE Setup {{{
"
""""""""""""""""""""""""""""" 
"Tab Settings
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

" UTF8 Support
set encoding=utf-8
" python-mode {{{



let g:pymode_doc = 1
let g:pymode_doc_key = 'M'
let g:pydoc = 'pydoc'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 0
let g:pymode_syntax_builtin_objs = 1
let g:pymode_syntax_print_as_function = 0
let g:pymode_syntax_space_errors = 0

let g:pymode_run = 0
let g:pymode_breakpoint = 0

let g:pymode_folding = 0

let g:pymode_options_indent = 0

let g:pymode_lint_ignore = "E501"

" YCM
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif


"Ultisnips.vim
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file

"python with virtualenv support

py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

"Django Settings
if filereadable($VIRTUAL_ENV . '/.vimrc')
         source $VIRTUAL_ENV/.vimrc
    endif
au FileType htmldjango set omnifunc=htmldjangocomplete#CompleteDjango
let g:django_projects = '~/Code/Projects/Django' "Sets all projects under django
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
    
" Syntax Checking/Highlighting
let python_highlight_all=1
syntax on


 " }}}

""""""""""""""""""""""""""""" 
" 
" Java IDE Settings {{{
"
""""""""""""""""""""""""""""" 
let g:EclimCompletionMethod = 'omnifunc'

" }}}


" Organization {{{
set modelines=1
" vim:foldmethod=marker:foldlevel=0
