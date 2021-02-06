setlocal foldmethod=expr
setlocal foldexpr=GetPotionFold(v:lnum)

function! s:NextNonBlankLine(lnum)
  let numlines = line('$')
  let current = a:lnum + 1 

  while current <= numlines
    if getline(current) =~? '\v\S'
      return current
    endif
    return -2
  endwhile
endfunction

function! s:IndentLevel(lnum)
  return indent(a:lnum) / &shiftwidth
endfunction

function! GetPotionFold(lnum)
  if getline(a:lnum) =~? '\v^\s*$'
    return '-1'
  endif

  let this_indent = IndentLevel(a:lnum)
  let next_indent = IndentLevel(NextNonBlankLine(a:lnum))

  if next_indent == this_indent
    return this_indent
  elseif next_indent < this_indent
    return this_indent
  elseif next_indent > this_indent
    return '>' . next_indent
  endif
endfunction
