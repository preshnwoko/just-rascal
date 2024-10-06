module Syntax

extend Lexical;


start syntax Statement = 
        // syntax for variable declaration statements
        declarationStat: JsVariable jsvars

        // syntax for condtional statements
        | conditionalStat: "if" "(" Exp exp")" "{" Statement state "}" "else" "{" Statement state "}"

        // syntax for return  statements
        | returnStat: "return" "{" Statement state "}"
        | returnSelf: "return" Statement state 

        // syntax for functions
        | functionStat: JsFunction jsFunc
;

syntax Object
        = obj: "{" {Property ","}* properties "}";

syntax JsFunction 
        = jsFunc: "function" Id "(" Id "," Id* ")" "{" Statement* "}";

syntax Property
        = prop: Id name ":" Exp exp;

syntax JsVariable 
        = jsVarExp: "let" Id name "=" Exp exp";" 
        | jsVarStr: "let" Id name "=" StringLiteral strVar";" 
        | jsVarObj: "let" Id name "=" Object varObj";";

syntax Exp
        = iliteral: IntegerLiteral
        | id: Id | strlit: StringLiteral
; 

syntax StringLiteral 
        = strl:  "\"" String stringL "\"";
 