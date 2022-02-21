grammar prog ;
root : declaration function ;
declaration : '*' declarationlist '<'declarationtype '>'  ;
declarationlist : 'include' | 'define' ;
declarationtype : term '.' term ;


function : 'int' ID '(' ')' block ;
block : '[' statement ']' ;
statement :(
  expressionstmt
 | selectionstmt
 | iterationstmt
 | statement_return
 | compoundstmt
 | outputstmt
 | breakstmt
 )+
 ;
expressionstmt : typeSpecifier expr ';' | ';' ;
statement_return : 'return' expr ';' | 'return' term ';' ;
expr :   expr binop expr | expr relop expr | expr logical_op expr | '(' expr ')' | term ;
binop : 'plus' | 'minus' | 'multiply' | 'devide' ;
relop : 'equal to' | 'not equal' | 'greater than equal' | 'less than' | 'greater than' | 'less than equal' | '=' ;
logical_op : '&&' | '||' ;
selectionstmt : 'if' '(' expr ')' block | 'if' '(' expr ')' block 'else' block ;
compoundstmt : '{' expr '}' ;
breakstmt : 'break' ;
iterationstmt : conditionalstmt | loopstmt ;
conditionalstmt : 'while' '(' expr ')' block ;
loopstmt : 'loop''('loopexpr')' block ;
loopexpr : var '='term ',' var relop term ',' var incr_op ;
outputstmt : 'print' expr ';' ;
var : ID ;
incr_op : '++'| '--' ;
term : ID | LIT ;
typeSpecifier : 'integer' | 'boolean' | 'character' ;


ID : [a-zA-Z]+ ;
LIT : [0-9]+ ;

WS : [ \t\r\n]+ -> skip ;