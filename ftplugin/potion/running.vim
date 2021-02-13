if !exists("g:potion_command")
  let g:potion_command = "potion"
endif

"Compile Potion Code
nnoremap <buffer> <localleader>r :call potion#running#PotionCompileAndRunFile()<cr>

"Show ByteCode In A VimSplit
nnoremap <buffer> <localleader>b :call potion#running#PotionShowBytecode()<cr>
