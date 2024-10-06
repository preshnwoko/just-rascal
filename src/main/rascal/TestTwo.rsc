module TestTwo

lexical IntegerLiteral = [0-9]+; 

start syntax Exp = IntegerLiteral;