"Author: Nachum Kanovsky
"Email: nkanovsky yahoo com
"Version: 1.0
if exists("b:did_ftplugin")
	finish
endif

let b:did_ftplugin = 1

augroup filetypedetect
    autocmd BufNewFile,BufReadPost *.v,*.vh,*.sv,*.svh set filetype=systemverilog 
augroup END
