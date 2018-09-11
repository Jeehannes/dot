"____VIMRC John Degen____"
"-----------------------------------------------------------" 
"-------------------<____Settings____>----------------------"
"-----------------------------------------------------------" 
"Menu language of gui == default language of OS
set langmenu=en
set nocompatible

"no visual bell, no terminal bell, no bell at all
set vb t_vb=
"redraw screen to remove artefact $q q
autocmd VimEnter * redraw!

"highlight search patterns
set hls

"show number of repeats and registers in command line area
"(standard in Windows GVim, but not on Unix, seems like)
set showcmd

"tabstops and indent (shiftwidth) == 4 (default 8)
"check if this messes up display of files in other apps
set shiftwidth=4
set tabstop=4

"backspace over everything in sight
set backspace=2

imap <F5> a d$a

"tab==4 spaces
set shiftwidth=4
set nocompatible
filetype on

colorscheme delek

"no other does it for me
if has ('gui_running')
	colorscheme darkblue
endif

set linebreak
syntax on

"nice informative statusline (2nd even more informative)
"Maybe takes too long to read;-)
"set statusline=%<%f\ %h%m%r%y%=%-14.(%l,%c%V%)\ %P
set statusline=%<%f\ %h%m%r%y%=%-14.(\l.\ %l\ \c.\ %c%)\ %P
set history=200

"Cursor is horizontal line for Insert mode (much nicer)
set guicursor=i-ci:hor10-Cursor/lCursor,

"Show as much of a long line as possible instead of @@@@@@
set display=lastline

"==completion colors and lines==
"Menu for completion more subdued colors
highlight Pmenu guifg=white guibg=darkblue
highlight PmenuSel guifg=white guibg=red
"Number of lines of completion matches (default as much space as possible)
set pumheight=10

"Other workable values for highlighting current line (:set cul)
"are darkcyan, Purple. Update: darkmagenta background and italic chars
" is currently my favourite. Syntax colors remain visible this way.
highlight CursorLine gui=NONE guifg=NONE guibg=darkmagenta
"highlight CursorLine gui=italic guifg=NONE guibg=darkmagenta
"Columns likewise
highlight CursorColumn gui=italic guifg=NONE guibg=darkmagenta

"Disable Alt+<letter> to access guimenus. More mappings 
"available this way
set winaltkeys=no

"command line area 2 lines high
set ch=2

"Always statusline
set laststatus=2

"set guifont=Bitstream\ Vera\ Sans\ Mono:h14:cANSI
set guifont=Bitstream\ Vera\ Sans\ Mono\ 16

"Gui colors are set in /usr/share/vim/vim73/colors/darkblue.vim

" Stuff needed for VimOrganizer, org-mode for Vim

filetype plugin indent on

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org            call org#SetOrgFileType()

"-----------------------------------------------------------" 
"-------------------<____Mappings____>----------------------"
"-----------------------------------------------------------" 
" CTRL-Tab is Next window (from mswin.vim)
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w

"Enter always searches next word
nnoremap <CR> n
"paste from "+ register
nnoremap \p "+p
"yank from "+ register
nnoremap \y "+y
"Set search history to empty string and number
nmap <F5> :let @/ = ""

noremap <F6> :set number!<CR>:set number?<CR>
noremap <S-F6> <CR>:set rnu!<CR>:set rnu?<CR>	
nmap <F2> :set spell<CR>
nmap <S-F2> :set spelllang=nl<CR>
nmap <C-F2> :set spelllang=en<CR>

noremap <C-S-F12> :mks! Session.vim<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

"Indicate active window with ~~~~~~ on statusline
set fillchars=stl:~,vert:\|,fold:-,diff:-

map <C-Space> A
imap <C-Space> <Esc>A
"change default register to "*" instead of "", so yanks go to Windows/X clipboard
set clipboard=unnamed

"spaces in right hand side of mappings are generally not a good
"idea (they _are_ in these two)
map <C-S-s> :browse confirm saveas<CR>
map <C-F12> :browse confirm e<CR>
map <F3> ZZ
imap <F3> <Esc>ZZ
map <S-Space> i
imap <S-Space> <Esc>
map <F12> :w<CR>
imap <F12> <Esc>:w<CR>a
map <C-s> :w<CR>
imap <C-d> <Esc>dea
imap <C-s> <Esc>:w<CR>
"source _vimrc
map <C-F8> :so $VIM/_vimrc<CR>
"Remove DOS line endings (^M)
map \M mz:%sub/\r//g<CR>`z

"Unix like page down
map <Space> <C-F>

" WordComplete
" Messes up undo! 
so ~/.vim/word_complete.vim
map <F8> :call DoWordComplete()
map <S-F8> :call EndWordComplete()

"-----------------------------------------------------------" 
"------------------<___Abbreviations___>--------------------"
"-----------------------------------------------------------" 
"exclusively for Dutch. Maybe I should move them to a separate file
"but I can't remember why I would want to do that

iabbr th tot het
iabbr td tot de
iabbr seld geselecteerd
iabbr ffd gefotografeerd
iabbr sli selectie
iabbr seln selecteren
iabbr dei die
iabbr ca camera
iabbr kn kunnen
iabbr tr toner
iabbr dmv door middel van
iabbr afb afbeelding
iabbr gebt gebruikt
iabbr gebn gebruiken
iabbr geb gebruik
iabbr fft fotografeert
iabbr ffn fotograferen
iabbr wt wordt
iabbr wn worden
iabbr uk u kunt
iabbr ku kunt u
iabbr ne en
iabbr pho Photoshop
iabbr ttp toe te passen
iabbr uuk U kunt
iabbr kuu Kunt u
iabbr zww zwart-wit
iabbr utv uit te voeren
iabbr vor voor
iabbr hn hebben
iabbr dor door
iabbr EEn Eén
iabbr Uk U kunt
iabbr wgg weergegeven
iabbr cnvn converteren
iabbr selt selecteert
iabbr ipv in plaats van
iabbr vrh voor het
iabbr vre voor een
iabbr vrd voor de
iabbr vooor vóór
iabbr vna van
iabbr vh van het
iabbr vd van de
iabbr va van
iabbr ttv toe te voegen
iabbr tov ten opzichte van
iabbr tm tot en met
iabbr sv server
iabbr sftw software
iabbr nrh naar het
iabbr nre naar een
iabbr nrd naar de
iabbr mme met een
iabbr mh met het
iabbr md met de
iabbr et het
iabbr eht het
iabbr Eeen Eén
iabbr eeen één
iabbr Ee Een
iabbr ee een
iabbr dwz dat wil zeggen
iabbr drh door het
iabbr dre door een
iabbr drd door de
iabbr db database
iabbr ae aan een
iabbr aa aan
iabbr Et Het

