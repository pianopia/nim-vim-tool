scriptencoding utf-8

" plugin以下のスクリプトが読み込まれていないと判断できるため、終了する。
if !exists('g:nimvimtool')
    finish
endif
let g:nimvimtool = 1

" ユーザー設定の停止
let s:save_cpo = &cpo
set cpo&vim

" Nimのテンプレートを作成
function! nimvimtool#NimTmp(line)
    :let input = "#? stdtmpl | standard\n#\n#proc genTop(): string =\n  # result = \"\""
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction

" ユーザー設定再開
let &cpo = s:save_cpo
unlet s:save_cpo
