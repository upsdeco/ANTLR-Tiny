grammar tiny;

programa
 : decl_sequencia EOF
 ;

decl_sequencia
 : decl_sequencia VIRGULA declaracao
 //| decl_sequencia VIRGULA
 | declaracao
 ;

declaracao
 : cond_decl
 | repet_decl
 | atrib_decl
 | leit_decl
 | escr_decl
 ;

cond_decl
 : IF exp THEN decl_sequencia END
 | IF exp THEN decl_sequencia ELSE decl_sequencia END
 ;

repet_decl
 : REPEAT decl_sequencia UNTIL exp
 ;

atrib_decl
 : IDENTIFICADOR ATRIBUICAO exp
 ;

leit_decl
 : READ IDENTIFICADOR
 ;

escr_decl
 : WRITE exp
 ;

exp
 : exp_simples comp_op exp_simples 
 | exp_simples
 ;

comp_op
 : MAIOR
 | IGUAL
 ;

exp_simples
 : exp_simples soma termo
 | termo
 ;

soma
 : MAIS
 | MENOS
 ;

termo
 : termo mult fator
 | fator
 ;

mult
 : VEZES
 | DIVIDIR
 ;

fator
 : PARENTESE_E exp PARENTESE_D
 | NUMERO
 | IDENTIFICADOR
 ; 

/* TOKENS */

IF
 : 'if'
 ;

THEN
 : 'then'
 ;

ELSE
 : 'else'
 ;

END
 : 'end'
 ;

REPEAT
 : 'repeat'
 ;

UNTIL
 : 'until'
 ;

READ
 : 'read'
 ;

WRITE
 : 'write'
 ;     

MAIS
  : '+'
  ;

MENOS
 : '-'
 ;

VEZES
 : '*'
 ;

DIVIDIR
 : '/'
 ;

IGUAL
 : '='
 ;

MAIOR
 : '<'
 ;

PARENTESE_E
 : '('
 ;

PARENTESE_D
 : ')'
 ;

VIRGULA
 : ';'
 ;

ATRIBUICAO
 : ':='
 ;  

NUMERO
 : ('-')?[0-9]+
 ;

IDENTIFICADOR
 : [a-zA-Z]+ 
 ;

COMENTARIO
 : '{'.*? '}' -> skip
 ;

IGNORAR
   : [ \r\n\t] -> skip
   ;
