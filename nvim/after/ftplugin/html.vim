setlocal tabstop=2
setlocal shiftwidth=2

autocmd BufWritePre <buffer> CocCommand editor.action.formatDocument
