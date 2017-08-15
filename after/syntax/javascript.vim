if exists('g:vim_javascript_tagged_loaded')
  finish
endif

let g:vim_javascript_tagged_loaded = 1

" Prologue; load in html,sql,graphql,html syntax.
if exists('b:current_syntax')
  let s:current_syntax=b:current_syntax
  unlet b:current_syntax
endif

syntax include @HTML syntax/html.vim
unlet b:current_syntax

syntax include @SQL syntax/sql.vim
unlet b:current_syntax

syntax include @MD syntax/markdown.vim
unlet b:current_syntax

syntax include @GraphQL syntax/graphql.vim
unlet b:current_syntax

if exists('s:current_syntax')
  let b:current_syntax=s:current_syntax
endif

syntax region jsHTMLTemplateString matchgroup=jsComment keepend start=+\(\/\*html\*\/\s\?\|html\)`+  skip=+\\\(`\|$\)+  end=+`+ contains=@HTML

syntax region jsSQLTemplateString matchgroup=jsComment keepend start=+\(\/\*sql\*\/\s\?\|sql\)`+  skip=+\\\(`\|$\)+  end=+`+ contains=@SQL

syntax region jsGraphQLTemplateString matchgroup=jsComment keepend start=+\(\/\*g\(raph\)\?ql\*\/\|g\(raph\)\?ql\)`+  skip=+\\\(`\|$\)+  end=+`+ contains=@GraphQL

syntax region jsMDTemplateString matchgroup=jsComment keepend start=+\(\/\*markdown\*\/\|\/\*md\*\/\|markdown\|md\)`+  skip=+\\\(`\|$\)+  end=+`+ contains=@MD

unlet g:vim_javascript_tagged_loaded
