import '/flutter_flow/flutter_flow_util.dart';
import 'crear_blog_widget.dart' show CrearBlogWidget;
import 'package:flutter/material.dart';

class CrearBlogModel extends FlutterFlowModel<CrearBlogWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for task widget.
  FocusNode? taskFocusNode;
  TextEditingController? taskTextController;
  String? Function(BuildContext, String?)? taskTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    taskFocusNode?.dispose();
    taskTextController?.dispose();
  }
}
