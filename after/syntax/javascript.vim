


" Prologue; load in html,sql,graphql syntax.
if exists('b:current_syntax')
  let s:current_syntax=b:current_syntax
  unlet b:current_syntax
endif

syntax include @SQL syntax/sql.vim
syntax include @GraphQL syntax/graphql.vim

if exists('s:current_syntax')
  let b:current_syntax=s:current_syntax
endif



syntax region jsSQLTemplateString matchgroup=jsComment start=+sql`+  skip=+\\\(`\|$\)+  end=+`+ contains=@SQL
syntax region jsSQLTemplateString matchgroup=jsComment start=+/\*sql\*/`+  skip=+\\\(`\|$\)+  end=+`+ contains=@SQL
syntax region jsGraphQLTemplateString matchgroup=jsComment start=+graphql`+  skip=+\\\(`\|$\)+  end=+`+ contains=@GraphQL
syntax region jsGraphQLTemplateString matchgroup=jsComment start=+/\*graphql\*/`+  skip=+\\\(`\|$\)+  end=+`+ contains=@GraphQL

