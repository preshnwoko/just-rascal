module TestParser

import IO;

// import Type;

import vis::Text;

import ParseTree;

extend Syntax;

void main (){
  Tree Result = parse(#Object, |project://rascal-2/src/main/rascal/file.txt|);
  println(prettyTree(Result));
  // Object Entadt = implode(#Object, Result);
  // println(Entadt);
} 
