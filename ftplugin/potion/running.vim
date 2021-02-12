if !exists("g:potion_command")
  let g:potion_command = "potion"
endif

function! PotionCompileAndRunFile()
  up
  silent !clear
  redraw!
  execute "!" . g:potion_command . " " . bufname("%")
endfunction

function! PotionShowBytecode()
  "update the file timestamp
  up
  "Get Bytecode
  let bytecode = system(g:potion_command . " -c -V " . bufname("%"))
  "Open a new split and set it up
  if v:shell_error
    echo "Syntax Error"
  else
    let winId = bufwinnr("Potion_Bytecode__")
    echo winId
    if winId == -1
      vsplit Potion_Bytecode__
    else 
      execute winId . "wincmd w"
    endif
    normal! ggdG
    setlocal filetype=potionbytecode
    setlocal buftype=nofile
    "Insert the bytecode
    call append(0, split(bytecode, '\v\n'))
    call cursor(1, 1)
  endif

endfunction

"Compile Potion Code
nnoremap <buffer> <localleader>r :call PotionCompileAndRunFile()<cr>

"Show ByteCode In A VimSplit
nnoremap <buffer> <localleader>b :call PotionShowBytecode()<cr>
