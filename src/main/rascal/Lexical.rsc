module Lexical

layout Whitespace = [\t-\n\r\ ]*;

keyword Keywords = "let" | "if" | "else" | "return";

lexical Id = [a-zA-Z_][a-zA-Z0-9_]* \ Keywords;

lexical IntegerLiteral = [0-9];

lexical String = 
                [a-zA-Z0-9_]* ;