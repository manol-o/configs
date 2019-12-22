map <F3> :w <CR><CR>
map <F2> :tabedit /mnt/masterarbeit/.latex/Bibliography.bib  <CR><CR>
map <F5> :cd /mnt/masterarbeit/.latex <CR> :!pdflatex main.tex <CR> :! zathura main.pdf <CR> :cd - <CR><CR>

map <F7>  :! zathura  /mnt/masterarbeit/.latex/main.pdf <CR><CR>

map <F8> :cd /mnt/masterarbeit/.latex <CR> :! /mnt/masterarbeit/.latex/create_bib.sh <CR><CR>

:imap jk <Esc>

" permanente Anzeige der aktuellen Zeilen- und Spaltennummer 
" in der Statuszeile 
set ru 

" keine Unterscheidung Groß-/Kleinschreibung beim Suchen 
set ignorecase 

" ignoriert ignorecase, falls Suchmuster auch Großbuchstaben smartcase enthält 
set smartcase

" erweiterter Modus der Kommandozeilen-Vervollständigung mit wildmenu Tab,
" in dem alle Treffer in einem Menü angezeigt werden      
set wildmenu

" fragen ob speichern, wenn Datei geschlossen wird.
set confirm

set wrap lbr
"set wrap linebreak nolist

" dont jump over long lines because of set wrap
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
vnoremap $ g$
nnoremap $ g$



nnoremap ú „
nnoremap í “
" 
inoremap ú „
inoremap í “

" erlaubt backspace löschen
set backspace=2 "

" spelling für deutsch und englisch, benötigt 
" vim-spell-de
set spelllang=en,de

" To enable spell checking for LaTeX (or TeX) documents only, add
" autocmd FileType tex setlocal spell spelllang=en_us " into your ~/.vimrc

set exrc
set secure
syntax on
" colorscheme darkblue_custom

" a <BS> : -> ä 
" set digraph 

"set breakindent

set encoding=utf-8

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab 
set smartindent
set foldmethod=indent
" set textwidth=80
" set wrapmargin=2
" To turn off physical line wrapping, clear both the textwidth and wrapmargin  buffer options:
set textwidth=0 
set wrapmargin=0

" map <F1> :EditVifm<CR><CR>
" map <F2> :TabVifm<CR><CR>
" map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" allow quit via single keypress (Q)
map Q :q<CR>
map ï :q<CR>
            
noremap <S-l> gt
noremap <S-h> gT

nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" If you want the cursor to appear in its previous position after you
" open a file, add the following to your ~/.vimrc:
augroup resCur
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END


" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files
" defaults to " 'plaintex' instead of 'tex', which results in vim-latex not
" being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Also, this installs to /usr/share/vim/vimfiles, which may not be in
" your runtime path (RTP). Be sure to add it too, e.g:
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

"make pdf not dvi
let g:Tex_DefaultTargetFormat='pdf'
set display=lastline
set foldmethod=manual
