import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/top_escritorio/top_escritorio_widget.dart';
import 'agregar_prod_recomendado_widget.dart' show AgregarProdRecomendadoWidget;
import 'package:flutter/material.dart';

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
  TextEditingController? tituloTextController;
  String? Function(BuildContext, String?)? tituloTextControllerValidator;
  String? _tituloTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for subtitulo widget.
  FocusNode? subtituloFocusNode;
  TextEditingController? subtituloTextController;
  String? Function(BuildContext, String?)? subtituloTextControllerValidator;
  String? _subtituloTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for buscar widget.
  final buscarKey = GlobalKey();
  FocusNode? buscarFocusNode;
  TextEditingController? buscarTextController;
  String? buscarSelectedOption;
  String? Function(BuildContext, String?)? buscarTextControllerValidator;
  List<ProductoRecord> simpleSearchResults1 = [];
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel2;
  // State field(s) for titulomovil widget.
  FocusNode? titulomovilFocusNode;
  TextEditingController? titulomovilTextController;
  String? Function(BuildContext, String?)? titulomovilTextControllerValidator;
  String? _titulomovilTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for subtituloMovil widget.
  FocusNode? subtituloMovilFocusNode;
  TextEditingController? subtituloMovilTextController;
  String? Function(BuildContext, String?)?
      subtituloMovilTextControllerValidator;
  String? _subtituloMovilTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for buscarMovil widget.
  final buscarMovilKey = GlobalKey();
  FocusNode? buscarMovilFocusNode;
  TextEditingController? buscarMovilTextController;
  String? buscarMovilSelectedOption;
  String? Function(BuildContext, String?)? buscarMovilTextControllerValidator;
  List<ProductoRecord> simpleSearchResults2 = [];
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {
    topEscritorioModel1 = createModel(context, () => TopEscritorioModel());
    tituloTextControllerValidator = _tituloTextControllerValidator;
    subtituloTextControllerValidator = _subtituloTextControllerValidator;
    topEscritorioModel2 = createModel(context, () => TopEscritorioModel());
    titulomovilTextControllerValidator = _titulomovilTextControllerValidator;
    subtituloMovilTextControllerValidator =
        _subtituloMovilTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topEscritorioModel1.dispose();
    tituloFocusNode?.dispose();
    tituloTextController?.dispose();

    subtituloFocusNode?.dispose();
    subtituloTextController?.dispose();

    buscarFocusNode?.dispose();

    topEscritorioModel2.dispose();
    titulomovilFocusNode?.dispose();
    titulomovilTextController?.dispose();

    subtituloMovilFocusNode?.dispose();
    subtituloMovilTextController?.dispose();

    buscarMovilFocusNode?.dispose();
  }
}
