if exists("b:current_syntax")
  finish
end

"Keywords{{{
syntax keyword potionKeyword loop to times while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return
highlight link potionKeyword Keyword
"}}}

"Function{{{
syntax keyword potionFunction print join string
highlight link potionFunction Function
"}}}

"Comment{{{
 syntax match potionComment "\v#.*$"
 highlight link potionComment Comment
"}}}

"Operator{{{
syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\="
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="
syntax match potionOperator "\v:"
syntax match potionOperator "\v\."
syntax match potionOperator "\v/"

highlight link potionOperator Operator
"}}}

"Potion Number{{{
  syntax match potionNumber "\v(\d+)" "Integer
  syntax match potionNumber "\v\d*\.\d+"  "Float
  syntax match potionNumber "\ve[\+\-]\d+"  "Exponent
  syntax match potionNumber "\v0x[[:xdigit:]]+" "HexaDecimal 
  highlight link potionNumber Number
"}}}

"Potion String{{{
  syntax region potionString start=/\v"/ skip=/\v\\./ end=/\v"/
  syntax region potionString start=/\v'/ skip=/\v\\./ end=/\v'/
  highlight link potionString String
"}}}



let b:current_syntax = "potion"
