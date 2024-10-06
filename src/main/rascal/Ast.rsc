module Ast

import Syntax;

data Statement 
        = declarationStat(JsVariable jsvar )
;
data Object = obj(list[Property] properties);

data Property = prop(str name, Exp exp);

data Exp = iliteral() | id();