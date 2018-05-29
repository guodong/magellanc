#ifndef MAGELLANC_AST_H
#define MAGELLANC_AST_H

#include <llvm/IR/Value.h>

namespace magellanc {

class CodeGeneratorContext;

class Node {
 public:
  Node() {}
  virtual ~Node() {}
  virtual llvm::Value* GenCode(CodeGeneratorContext& context) { return (llvm::Value*)0; }
};

class NStatement : public Node {

};

class NExpression : public Node {

};

class NInteger : public NExpression {
 public:
  NInteger(uint64_t value) : value_(value) { }
  virtual llvm::Value* GenCode(CodeGeneratorContext& context) override;
  
  uint64_t get_value() { return value_; }
  
 private:
  uint64_t value_;
};

class NIdentifier : public NExpression {
 public:
  NIdentifier(const std::string& name) : name_(name) { }
  virtual llvm::Value* GenCode(CodeGeneratorContext& context) override;
  
  std::string get_name() { return name_; }
  
 private:
  std::string name_;
};

class NBinaryOperator : public NExpression {
 public:
  NBinaryOperator(std::shared_ptr<NExpression> lhs, int op, std::shared_ptr<NExpression> rhs)
      : lhs_(lhs), op_(op), rhs_(rhs) { }

  std::shared_ptr<NExpression> get_lhs() { return hls_; }
  std::shared_ptr<NExpression> get_rhs() { return rhs_; }

 private:
  int op_;
  std::shared_ptr<NExpression> lhs_;
  std::shared_ptr<NExpression> rhs_;
};

class NAssignment : public NExpression {
 public:
  NAssignment(std::shared_ptr<NIdentifier> lhs, std::shared_ptr<NExpression> rhs)
      : lhs_(lhs), rhs_(rhs) { }

 private:
  shared_ptr<NIdentifier> lhs_;
  shared_ptr<NExpression> rhs_;
};

class NVariableDeclaration : public NStatement {
 public:
  NVariableDeclaration(const std::shared_ptr<NIdentifier> type, std::shared_ptr<NIdentifier> id,
                       std::shared_ptr<NExpression> expression) :
      type_(type), id_(id), expression_(expression) { }

 private:
  std::shared_ptr<NIdentifier> type_;
  std::shared_ptr<NIdentifier> id_;
  std::shared_ptr<NExpression> expression_ = nullptr;
};

}
#endif
