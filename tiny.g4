grammar tiny;

programa
 : decl_sequencia EOF
 ;

decl_sequencia
 : decl_sequencia PONTO_E_VIRGULA declaracao
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
 : MULTIPLICAR
 | DIVIDIR
 ;

fator
 : PARENTESE_ESQUERDO exp PARENTESE_DIREITO
 | inteiro
 | IDENTIFICADOR
 ;

 inteiro
 : '-'? NUMERO
 ; 

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

MULTIPLICAR
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

PARENTESE_ESQUERDO
 : '('
 ;

PARENTESE_DIREITO
 : ')'
 ;

PONTO_E_VIRGULA
 : ';'
 ;

ATRIBUICAO
 : ':='
 ;  

NUMERO
 : [0-9]+
 ;

IDENTIFICADOR
 : [a-zA-Z]+ 
 ;

COMENTARIO
 : '{' .*? '}' -> skip
 ;

IGNORAR
   : [ \r\n\t]+ -> skip
   ;
