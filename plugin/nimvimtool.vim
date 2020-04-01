scriptencoding utf-8

" 読み込み制御用の変数がすでに存在していたら、もうすでに読み込み済みと判断して終了する
if exists('g:nimvimtool')
    finish
endif
let g:nimvimtool = 1

command! -nargs=0 NimTmp call nimvimtool#NimTmp(getline('.'))

command! -nargs=0 NimStdImport call nimvimtool#NimStdImport(getline('.'))
