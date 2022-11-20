let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Dev/analyse_django/19_django_level_five/learning_users
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +136 learning_users/settings.py
badd +9 basic_app/models.py
badd +5 basic_app/admin.py
badd +20 basic_app/forms.py
badd +36 template/basic_app/base.html
badd +3 template/basic_app/index.html
badd +10 template/basic_app/registration.html
badd +23 learning_users/urls.py
badd +16 basic_app/views.py
badd +6 basic_app/urls.py
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit basic_app/models.py
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 75 + 75) / 151)
exe 'vert 2resize ' . ((&columns * 75 + 75) / 151)
argglobal
balt basic_app/admin.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 13 - ((12 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 13
let s:c = 5 - ((0 * winwidth(0) + 37) / 75)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 5 . '|'
else
  normal! 05|
endif
wincmd w
argglobal
if bufexists(fnamemodify("basic_app/admin.py", ":p")) | buffer basic_app/admin.py | else | edit basic_app/admin.py | endif
if &buftype ==# 'terminal'
  silent file basic_app/admin.py
endif
balt basic_app/models.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 5 - ((4 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 035|
wincmd w
exe 'vert 1resize ' . ((&columns * 75 + 75) / 151)
exe 'vert 2resize ' . ((&columns * 75 + 75) / 151)
tabnext
edit basic_app/forms.py
argglobal
balt basic_app/admin.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 9 - ((8 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 9
normal! 014|
tabnext
edit template/basic_app/base.html
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 75 + 75) / 151)
exe 'vert 2resize ' . ((&columns * 75 + 75) / 151)
argglobal
balt template/basic_app/registration.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 36 - ((18 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 36
let s:c = 75 - ((68 * winwidth(0) + 37) / 75)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 75 . '|'
else
  normal! 075|
endif
wincmd w
argglobal
if bufexists(fnamemodify("template/basic_app/registration.html", ":p")) | buffer template/basic_app/registration.html | else | edit template/basic_app/registration.html | endif
if &buftype ==# 'terminal'
  silent file template/basic_app/registration.html
endif
balt template/basic_app/base.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 8 - ((7 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 010|
wincmd w
exe 'vert 1resize ' . ((&columns * 75 + 75) / 151)
exe 'vert 2resize ' . ((&columns * 75 + 75) / 151)
tabnext
edit learning_users/urls.py
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 75 + 75) / 151)
exe 'vert 2resize ' . ((&columns * 75 + 75) / 151)
argglobal
balt basic_app/urls.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 23 - ((22 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 23
normal! 049|
wincmd w
argglobal
if bufexists(fnamemodify("basic_app/urls.py", ":p")) | buffer basic_app/urls.py | else | edit basic_app/urls.py | endif
if &buftype ==# 'terminal'
  silent file basic_app/urls.py
endif
balt learning_users/urls.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 8 - ((7 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 052|
wincmd w
exe 'vert 1resize ' . ((&columns * 75 + 75) / 151)
exe 'vert 2resize ' . ((&columns * 75 + 75) / 151)
tabnext
edit basic_app/views.py
argglobal
balt learning_users/urls.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 21 - ((20 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 21
normal! 016|
tabnext 5
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
