unmap ;
exmap savefile obcommand editor:save-file
nmap ;w :savefile
exmap closepane obcommand workspace:close
nmap ;q :closepane

exmap toggleleftsiding obcommand app:toggle-left-sidebar
nmap ;e :toggleleftsiding
exmap togglerightsiding obcommand app:toggle-right-sidebar
nmap ;t :togglerightsiding

" Have j and k navigate visual lines rather than logical ones
nmap j gj
nmap k gk

" I like using H and L for beginning/end of line
nmap H ^
nmap L $

" Quickly remove search highlights
" nmap <F9> :nohl

" Yank to system clipboard
set clipboard=unnamed

" Go back and forward with Ctrl+O and Ctrl+I
exmap follow obcommand editor:follow-link
nmap <CR> :follow
exmap back obcommand app:go-back
nmap <BS> :back
nmap <C-o> :back
exmap forward obcommand app:go-forward
nmap <C-i> :forward

" Emulate Folding https://vimhelp.org/fold.txt.html#fold-commands
exmap togglefold obcommand editor:toggle-fold
nmap zo :togglefold
exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall
exmap foldall obcommand editor:fold-all
nmap zM :foldall

exmap homepage obcommand homepage:open-homepage
nmap \ww :homepage
exmap daily obcommand daily-notes
nmap \w\w :daily
exmap daily_prev obcommand daily-notes:goto-prev
nmap \w\p :daily_prev
exmap daily_next obcommand daily-notes:goto-next
nmap \w\n :daily_next

exmap delete_file obcommand app:delete-file
nmap \wd :delete_file
