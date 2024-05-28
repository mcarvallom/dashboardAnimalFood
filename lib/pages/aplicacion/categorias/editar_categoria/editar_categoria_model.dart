import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/top_escritorio/top_escritorio_widget.dart';
import 'editar_categoria_widget.dart' show EditarCategoriaWidget;
import 'package:flutter/material.dart';

class EditarCategoriaModel extends FlutterFlowModel<EditarCategoriaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel;
  // State field(s) for tituloMovil widget.
  FocusNode? tituloMovilFocusNode;
  TextEditingController? tituloMovilTextController;
  String? Function(BuildContext, String?)? tituloMovilTextControllerValidator;
  String? _tituloMovilTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    topEscritorioModel = createModel(context, () => TopEscritorioModel());
    tituloMovilTextControllerValidator = _tituloMovilTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topEscritorioModel.dispose();
    tituloMovilFocusNode?.dispose();
    tituloMovilTextController?.dispose();
  }
}
