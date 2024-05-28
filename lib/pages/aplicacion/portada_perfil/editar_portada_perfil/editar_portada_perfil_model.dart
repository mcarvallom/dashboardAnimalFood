import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/top_escritorio/top_escritorio_widget.dart';
import 'editar_portada_perfil_widget.dart' show EditarPortadaPerfilWidget;
import 'package:flutter/material.dart';

class EditarPortadaPerfilModel
    extends FlutterFlowModel<EditarPortadaPerfilWidget> {
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
