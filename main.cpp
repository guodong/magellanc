#include "codegen.h"


extern shared_ptr<NBlock> programBlock;
extern int yyparse();

int main(int argc, char **argv) {
  yyparse();

  CodeGenContext context;
  context.generateCode(*programBlock);

  return 0;
}
