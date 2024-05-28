import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/top_escritorio/top_escritorio_widget.dart';
import 'editar_pag_categoria_widget.dart' show EditarPagCategoriaWidget;
import 'package:flutter/material.dart';

class EditarPagCategoriaModel
    extends FlutterFlowModel<EditarPagCategoriaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    topEscritorioModel = createModel(context, () => TopEscritorioModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topEscritorioModel.dispose();
  }
}
