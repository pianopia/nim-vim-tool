scriptencoding utf-8

" plugin以下のスクリプトが読み込まれていないと判断できるため、終了する。
if !exists('g:nimvimtool')
    finish
endif
let g:nimvimtool = 1

" Nimのテンプレートを作成
function! nimvimtool#NimTmp(line)
    :let input = "#? stdtmpl | standard"
              \ ."\r\n"
              \ ."#\r\n"
              \ ."#proc genTop(): string =\r\n"
              \ ."#  result = \"\""
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction

" 定番のimport
function! nimvimtool#NimStdImport(line)
    :let input = "import os, system, macros, strutils, strformat, json"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction
