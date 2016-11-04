" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set backspace=indent,eol,start		" allow backspacing over everything in insert mode
set history=50				" keep 50 lines of command line history
set ruler				" show the cursor position all the time
set showcmd				" display incomplete commands
set incsearch				" do incremental searching

:set cursorline
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

" Don't use Ex mode, use Q for formatting
map Q gq

set autoindent				" always set autoindenting
set tabstop=4				" set tab stop to 4

syntax on
set hlsearch

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

au BufNewFile,BufRead *.thor setf ruby
au BufNewFile,BufRead .bashrc*,bashrc,bash.bashrc,.bash_profile*,.bash_logout*,*.bash,*.ebuild call SetFileTypeSH("bash")

set nobackup
set nowritebackup

call plug#begin('~/.vim/plugged')
call plug#end()

" Plugin 'rust-lang/rust.vim'
