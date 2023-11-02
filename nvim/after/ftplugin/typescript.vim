setlocal tabstop=2
setlocal shiftwidth=2

autocmd BufWritePre <buffer> CocCommand prettier.forceFormatDocument
