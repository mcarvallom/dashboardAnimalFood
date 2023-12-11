import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'editar_productos_widget.dart' show EditarProductosWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class EditarProductosModel extends FlutterFlowModel<EditarProductosWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionController;
  String? Function(BuildContext, String?)? txtDescripcionControllerValidator;
  // State field(s) for txtIndicacionesyContraindicaciones widget.
  FocusNode? txtIndicacionesyContraindicacionesFocusNode;
  TextEditingController? txtIndicacionesyContraindicacionesController;
  String? Function(BuildContext, String?)?
      txtIndicacionesyContraindicacionesControllerValidator;
  // State field(s) for txtMododeuso widget.
  FocusNode? txtMododeusoFocusNode;
  TextEditingController? txtMododeusoController;
  String? Function(BuildContext, String?)? txtMododeusoControllerValidator;
  // State field(s) for txtDosificacion widget.
  FocusNode? txtDosificacionFocusNode;
  TextEditingController? txtDosificacionController;
  String? Function(BuildContext, String?)? txtDosificacionControllerValidator;
  // State field(s) for txtPrecauciones widget.
  FocusNode? txtPrecaucionesFocusNode;
  TextEditingController? txtPrecaucionesController;
  String? Function(BuildContext, String?)? txtPrecaucionesControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for txtIngredientes widget.
  FocusNode? txtIngredientesFocusNode;
  TextEditingController? txtIngredientesController;
  String? Function(BuildContext, String?)? txtIngredientesControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for txtMarca widget.
  FocusNode? txtMarcaFocusNode;
  TextEditingController? txtMarcaController;
  String? Function(BuildContext, String?)? txtMarcaControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for etiquetaProducto widget.
  FocusNode? etiquetaProductoFocusNode;
  TextEditingController? etiquetaProductoController;
  String? Function(BuildContext, String?)? etiquetaProductoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionController?.dispose();

    txtIndicacionesyContraindicacionesFocusNode?.dispose();
    txtIndicacionesyContraindicacionesController?.dispose();

    txtMododeusoFocusNode?.dispose();
    txtMododeusoController?.dispose();

    txtDosificacionFocusNode?.dispose();
    txtDosificacionController?.dispose();

    txtPrecaucionesFocusNode?.dispose();
    txtPrecaucionesController?.dispose();

    textFieldFocusNode1?.dispose();
    textController7?.dispose();

    txtIngredientesFocusNode?.dispose();
    txtIngredientesController?.dispose();

    textFieldFocusNode2?.dispose();
    textController9?.dispose();

    textFieldFocusNode3?.dispose();
    textController10?.dispose();

    txtMarcaFocusNode?.dispose();
    txtMarcaController?.dispose();

    textFieldFocusNode4?.dispose();
    textController12?.dispose();

    etiquetaProductoFocusNode?.dispose();
    etiquetaProductoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
