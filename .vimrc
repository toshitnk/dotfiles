set number
set clipboard+=unnamed

" status line
set laststatus=2

" show command
set showcmd

set cursorline

set virtualedit=onemore

set smartindent


nnoremap j gj
nnoremap k gk


nmap <Esc><Esc> :nohlsearch<CR><Esc>



" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2019 Jan 26
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif



"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/usagi/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/usagi/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/home/usagi/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
"call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})

" TeX
call dein#add('lervag/vimtex')
let g:vimtex_quickfix_open_on_warning = 0



" Julia

call dein#add("JuliaEditorSupport/julia-vim")

" twitter 
call dein#add("twitvim/twitvim")
let twitvim_enable_python = 1
let twitvim_browser_cmd = 'firefox'
let twitvim_force_ssl = 1
let twitvim_count = 40


" color scheme

"call dein#add('tomasr/molokai')
"colorscheme molokai

" 括弧の補完
call dein#add("Townk/vim-autoclose")

" html
call dein#add("mattn/emmet-vim")

call dein#add("kannokanno/previm")
let g:previm_open_cmd = 'firefox'
let g:preview_markdown_vertical = 1

" Required:
call dein#end()

" Required:"
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

"バックアップファイルなどの保存場所
set backupdir=~/Documents/vim_buckup
set undodir=~/Documents/vim_buckup


" Tab ------------------------------------
set tabstop=4
set list
set listchars=tab:>-,space:_


hi NonText ctermbg=None ctermfg=60
hi SpecialKey ctermbg=None ctermfg=60




" templates ---------------------------------
augroup templateGroup
autocmd!
autocmd BufNewFile *.tex :0r ~/.vim/template/latex.tex
autocmd BufNewFile *.beamer.tex :0r ~/.vim/template/beamer.tex
autocmd BufNewFile *.cpp :0r ~/.vim/template/cpp.txt
autocmd BufNewFile *.html :0r ~/.vim/template/html.html
autocmd BufNewFile *.f :0r ~/.vim/template/fortran77.f
augroup END

let g:coc_disable_startup_warning = 1
" tex
inoremap $ $ $<LEFT><LEFT>


imap <C-p><C-l> \documentclass[english, dvipdfmx, a4paper]{jsarticle}
\						\begin{document}
\						\end{document}
