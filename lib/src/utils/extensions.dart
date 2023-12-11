import '../index.dart';

extension AstNodeExt on AstNode {
  ClassDeclaration? get parentClassDeclaration => thisOrAncestorOfType<ClassDeclaration>();

  List<MethodInvocation> get childMethodInvocations {
    final methodInvocations = <MethodInvocation>[];
    visitChildren(RecursiveMethodInvocationVisitor(
      onVisitMethodInvocation: methodInvocations.add,
    ));

    return methodInvocations;
  }

  List<AwaitExpression> get childAwaitExpressions {
    final awaitExpressions = <AwaitExpression>[];
    visitChildren(RecursiveAwaitExpressionVisitor(
      onVisitAwaitExpression: awaitExpressions.add,
    ));

    return awaitExpressions;
  }

  List<ReturnStatement> get childReturnStatements {
    final returnStatements = <ReturnStatement>[];
    visitChildren(RecursiveReturnStatementVisitor(
      onVisitReturnStatement: returnStatements.add,
    ));

    return returnStatements;
  }

  SourceRange get sourceRange => SourceRange(offset, length);
}

extension DartFileEditBuilderExt on DartFileEditBuilder {
  void formatWithPageWidth(SourceRange range, {int pageWidth = 100}) {
    if (this is! DartFileEditBuilderImpl) {
      format(range);

      return;
    }

    final builder = this as DartFileEditBuilderImpl;

    var newContent = builder.resolvedUnit.content;
    var newRangeOffset = range.offset;
    var newRangeLength = range.length;
    for (var edit in builder.fileEdit.edits) {
      newContent = edit.apply(newContent);

      final lengthDelta = edit.replacement.length - edit.length;
      if (edit.offset < newRangeOffset) {
        newRangeOffset += lengthDelta;
      } else if (edit.offset < newRangeOffset + newRangeLength) {
        newRangeLength += lengthDelta;
      }
    }

    final formattedResult = DartFormatter(pageWidth: pageWidth).formatSource(
      SourceCode(
        newContent,
        isCompilationUnit: true,
        selectionStart: newRangeOffset,
        selectionLength: newRangeLength,
      ),
    );

    builder.replaceEdits(
      range,
      SourceEdit(
        range.offset,
        range.length,
        formattedResult.selectedText,
      ),
    );
  }
}

extension CustomLintResolverExt on CustomLintResolver {
  Future<String> get rootPath async =>
      (await getResolvedUnitResult()).session.analysisContext.contextRoot.root.path;

  void getLineContents(void Function(CodeLine codeLine) onCodeLine) {
    var previousLineContent = '';
    var isMultiLineComment = false;
    for (final startOffset in lineInfo.lineStarts) {
      final lineCount = lineInfo.lineStarts.length;
      final lineNumber = lineInfo.getLocation(startOffset).lineNumber;
      if (lineNumber <= lineCount - 1) {
        final startOffsetOfNextLine = lineInfo.getOffsetOfLineAfter(startOffset);
        final lineLength = startOffsetOfNextLine - startOffset - 1;
        final content = source.contents.data.substring(
          startOffset,
          startOffsetOfNextLine,
        );

        final isDocumentationComment = content.trim().startsWith('///');

        final isSingleLineComment = content.trim().startsWith('//') && !isDocumentationComment;

        if (content.trim().startsWith('/*')) {
          isMultiLineComment = true;
        }

        if (previousLineContent.trim().endsWith('*/') && isMultiLineComment) {
          isMultiLineComment = false;
        }

        previousLineContent = content;

        onCodeLine(
          CodeLine(
            lineNumber: lineNumber,
            lineOffset: startOffset,
            lineLength: lineLength,
            content: content,
            isEndOfLineComment: isSingleLineComment,
            isBlockComment: isMultiLineComment,
            isDocumentationComment: isDocumentationComment,
          ),
        );
      }
    }
  }

  SourceRange get documentRange => SourceRange(
        0,
        lineInfo.getOffsetOfLineAfter(lineInfo.lineStarts[lineInfo.lineStarts.length - 2]) - 1,
      );
}

extension DartTypeExt on DartType {
  bool get isNullableType => nullabilitySuffix == NullabilitySuffix.question;

  bool get isVoidType => this is VoidType;

  bool get isDynamicType => this is DynamicType;
}

extension MethodDeclarationExt on MethodDeclaration {
  List<MethodDeclaration> get pearMethodDeclarations {
    return parentClassDeclaration?.childEntities.whereType<MethodDeclaration>().toList() ??
        <MethodDeclaration>[];
  }

  bool get isOverrideMethod => toString().trim().contains('@override');
}

extension LintCodeCopyWith on LintCode {
  LintCode copyWith({
    String? name,
    String? problemMessage,
    String? correctionMessage,
    String? uniqueName,
    String? url,
    ErrorSeverity? errorSeverity,
  }) =>
      LintCode(
        name: name ?? this.name,
        problemMessage: problemMessage ?? this.problemMessage,
        correctionMessage: correctionMessage ?? this.correctionMessage,
        uniqueName: uniqueName ?? this.uniqueName,
        url: url ?? this.url,
        errorSeverity: errorSeverity ?? this.errorSeverity,
      );
}
