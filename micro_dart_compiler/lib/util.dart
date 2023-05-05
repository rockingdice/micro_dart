import 'package:kernel/ast.dart';

Uri ensureFolderPath(String path) {
  String uriPath = Uri.file(path).toString();
  if (!uriPath.endsWith('/')) {
    uriPath = '$uriPath/';
  }
  return Uri.base.resolve(uriPath);
}

Procedure? findProcedure(TreeNode? node) {
  if (node == null) {
    return null;
  }
  if (node is Procedure) {
    return node;
  }
  return findProcedure(node.parent);
}
