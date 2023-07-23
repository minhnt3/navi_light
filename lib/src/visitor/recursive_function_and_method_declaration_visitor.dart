import '../index.dart';

class RecursiveFunctionAndMethodDeclarationVisitor extends RecursiveAstVisitor<void> {
  RecursiveFunctionAndMethodDeclarationVisitor({
    required this.onVisitFunctionDeclaration,
    required this.onVisitMethodDeclaration,
  });

  void Function(FunctionDeclaration node) onVisitFunctionDeclaration;
  void Function(MethodDeclaration node) onVisitMethodDeclaration;

  @override
  void visitFunctionDeclaration(FunctionDeclaration node) {
    onVisitFunctionDeclaration(node);

    node.visitChildren(this);
  }

  @override
  void visitMethodDeclaration(MethodDeclaration node) {
    onVisitMethodDeclaration(node);

    node.visitChildren(this);
  }
}
