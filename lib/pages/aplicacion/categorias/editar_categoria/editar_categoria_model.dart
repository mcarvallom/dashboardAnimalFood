import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/componentes/top_escritorio/top_escritorio_widget.dart';
import 'editar_categoria_widget.dart' show EditarCategoriaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
