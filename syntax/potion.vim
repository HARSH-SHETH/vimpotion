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

highlight link potionOperator Operator
"}}}



let b:current_syntax = "potion"
