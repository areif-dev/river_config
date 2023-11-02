setlocal tabstop=4
setlocal shiftwidth=4

autocmd BufWritePre <buffer> CocCommand editor.action.formatDocument
