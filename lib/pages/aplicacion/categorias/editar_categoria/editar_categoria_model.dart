import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/top_escritorio_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'editar_categoria_widget.dart' show EditarCategoriaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarCategoriaModel extends FlutterFlowModel<EditarCategoriaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel1;
  // State field(s) for titulo widget.
  FocusNode? tituloFocusNode;
  TextEditingController? tituloController;
  String? Function(BuildContext, String?)? tituloControllerValidator;
  String? _tituloControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel2;
  // State field(s) for tituloMovil widget.
  FocusNode? tituloMovilFocusNode;
  TextEditingController? tituloMovilController;
  String? Function(BuildContext, String?)? tituloMovilControllerValidator;
  String? _tituloMovilControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    topEscritorioModel1 = createModel(context, () => TopEscritorioModel());
    tituloControllerValidator = _tituloControllerValidator;
    topEscritorioModel2 = createModel(context, () => TopEscritorioModel());
    tituloMovilControllerValidator = _tituloMovilControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    topEscritorioModel1.dispose();
    tituloFocusNode?.dispose();
    tituloController?.dispose();

    topEscritorioModel2.dispose();
    tituloMovilFocusNode?.dispose();
    tituloMovilController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
