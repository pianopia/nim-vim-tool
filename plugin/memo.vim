scriptencoding utf-8

" 読み込み制御用の変数がすでに存在していたら、もうすでに読み込み済みと判断して終了する
if exists('g:nimvimtool')
    finish
endif
let g:memovim = 1

" ユーザー設定の停止
let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 NimTmp call nimvimtool#NimTmp(getline('.'))

" ユーザー設定の再開
let &cpo = s:save_cpo
unlet s:save_cpo
