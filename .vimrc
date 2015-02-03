:colorscheme koehler
:set number
:filetype indent on
:filetype on
:set autoindent
:set tabstop=2
:set sw=2
:set pfn=Monaco:hi6
:set colorcolumn=80
:set ruler
:set incsearch

filetype plugin indent on

:set grepprg=grep\ -nH\ $*
:set iskeyword+=:
let g:tex_flavor='latex'

:autocmd BufNewFile,BufRead *.[hH]* set formatprg=astyle\ --mode=c\ --options=/Users/johann/Indiecam.astyle
:autocmd BufNewFile,BufRead *.[cC]* set formatprg=astyle\ --mode=c\ --options=/Users/johann/Indiecam.astyle
au BufNewFile,BufRead *.cpp set syntax=cpp11
au BufNewFile,BufRead *.hh set syntax=cpp11
au BufNewFile,BufRead *.cc set syntax=cpp11
au BufNewFile,BufRead *.hh set syntax=cpp11

:autocmd BufRead *.java set efm=%A\ %#[javac]\ %f:%l:\ %m,%-Z\ %#[javac]\ %p^,%-C%.%#
:autocmd BufRead set makeprg=ant\ -find\ build.xml

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:Tex_ViewRule_pdf = 'Preview'
let g:Tex_MultipleCompileFormats = 'pdf'

let NERDTreeIgnore = ['\.o']

set guifont=Inconsolata:h14

" vim-latex
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let g:Tex_Folding=0

:map <D-r> \ll\lv
:imap <D-r> <Esc>\ll\lv

