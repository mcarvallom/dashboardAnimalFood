import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/top_escritorio_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'agregar_prod_recomendado_widget.dart' show AgregarProdRecomendadoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class AgregarProdRecomendadoModel
    extends FlutterFlowModel<AgregarProdRecomendadoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in agregarProdRecomendado widget.
  List<ProductoRecord>? productos;
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

  // State field(s) for subtitulo widget.
  FocusNode? subtituloFocusNode;
  TextEditingController? subtituloController;
  String? Function(BuildContext, String?)? subtituloControllerValidator;
  String? _subtituloControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for buscar widget.
  final buscarKey = GlobalKey();
  FocusNode? buscarFocusNode;
  TextEditingController? buscarController;
  String? buscarSelectedOption;
  String? Function(BuildContext, String?)? buscarControllerValidator;
  List<ProductoRecord> simpleSearchResults1 = [];
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel2;
  // State field(s) for titulomovil widget.
  FocusNode? titulomovilFocusNode;
  TextEditingController? titulomovilController;
  String? Function(BuildContext, String?)? titulomovilControllerValidator;
  String? _titulomovilControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for subtituloMovil widget.
  FocusNode? subtituloMovilFocusNode;
  TextEditingController? subtituloMovilController;
  String? Function(BuildContext, String?)? subtituloMovilControllerValidator;
  String? _subtituloMovilControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for buscarMovil widget.
  final buscarMovilKey = GlobalKey();
  FocusNode? buscarMovilFocusNode;
  TextEditingController? buscarMovilController;
  String? buscarMovilSelectedOption;
  String? Function(BuildContext, String?)? buscarMovilControllerValidator;
  List<ProductoRecord> simpleSearchResults2 = [];
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    topEscritorioModel1 = createModel(context, () => TopEscritorioModel());
    tituloControllerValidator = _tituloControllerValidator;
    subtituloControllerValidator = _subtituloControllerValidator;
    topEscritorioModel2 = createModel(context, () => TopEscritorioModel());
    titulomovilControllerValidator = _titulomovilControllerValidator;
    subtituloMovilControllerValidator = _subtituloMovilControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    topEscritorioModel1.dispose();
    tituloFocusNode?.dispose();
    tituloController?.dispose();

    subtituloFocusNode?.dispose();
    subtituloController?.dispose();

    buscarFocusNode?.dispose();

    topEscritorioModel2.dispose();
    titulomovilFocusNode?.dispose();
    titulomovilController?.dispose();

    subtituloMovilFocusNode?.dispose();
    subtituloMovilController?.dispose();

    buscarMovilFocusNode?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
