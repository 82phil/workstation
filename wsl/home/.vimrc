" General

:set nocompatible
:filetype off
:set backspace=indent,eol,start
:set showcmd
:set showmode

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'will133/vim-dirdiff'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" User Interface
:set number
:set cursorline
:highlight CursorLine guibg=lightblue ctermbg=blue
:set spell
:set laststatus=2
:set ruler
:set relativenumber
:set mouse=a
:set title
:colorscheme slate
:set background=dark

" Indentation
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4

au BufNewFile,BufRead *.py
    \ set textwidth=120

au BufNewFile,BufRead *.js,*.html,*.css,*.yml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

:set expandtab

" Search
:set incsearch
:set hlsearch
:set ignorecase
:set smartcase

" Text Rendering
:set encoding=utf-8
:set linebreak
:set scrolloff=3
:syntax enable

" Spellcheck Underline
:highlight clear spellbad
:highlight spellbad cterm=underline ctermfg=green

" WSL Clipboard support
let s:clip = systemlist('which clip.exe')[0]
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
    augroup END
end

let s:g_clip = systemlist('which powershell.exe')[0]
if executable(s:g_clip)
    map <silent> "=p :r !powershell.exe -noprofile -noninteractive -Command Get-Clipboard<CR>
end


