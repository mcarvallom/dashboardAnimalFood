import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'agregar_producto_component_widget.dart'
    show AgregarProductoComponentWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class AgregarProductoComponentModel
    extends FlutterFlowModel<AgregarProductoComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for IndicacionesyContraindicaciones widget.
  FocusNode? indicacionesyContraindicacionesFocusNode;
  TextEditingController? indicacionesyContraindicacionesController;
  String? Function(BuildContext, String?)?
      indicacionesyContraindicacionesControllerValidator;
  // State field(s) for Mododeuso widget.
  FocusNode? mododeusoFocusNode;
  TextEditingController? mododeusoController;
  String? Function(BuildContext, String?)? mododeusoControllerValidator;
  // State field(s) for Dosificacion widget.
  FocusNode? dosificacionFocusNode;
  TextEditingController? dosificacionController;
  String? Function(BuildContext, String?)? dosificacionControllerValidator;
  // State field(s) for Precauciones widget.
  FocusNode? precaucionesFocusNode;
  TextEditingController? precaucionesController;
  String? Function(BuildContext, String?)? precaucionesControllerValidator;
  // State field(s) for analisis widget.
  FocusNode? analisisFocusNode;
  TextEditingController? analisisController;
  String? Function(BuildContext, String?)? analisisControllerValidator;
  // State field(s) for Ingredientes widget.
  FocusNode? ingredientesFocusNode;
  TextEditingController? ingredientesController;
  String? Function(BuildContext, String?)? ingredientesControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for precioOriginal widget.
  FocusNode? precioOriginalFocusNode;
  TextEditingController? precioOriginalController;
  String? Function(BuildContext, String?)? precioOriginalControllerValidator;
  String? _precioOriginalControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for precioDescuento widget.
  FocusNode? precioDescuentoFocusNode;
  TextEditingController? precioDescuentoController;
  String? Function(BuildContext, String?)? precioDescuentoControllerValidator;
  // State field(s) for marcaProducto widget.
  FocusNode? marcaProductoFocusNode;
  TextEditingController? marcaProductoController;
  String? Function(BuildContext, String?)? marcaProductoControllerValidator;
  String? _marcaProductoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for SwitchDestacado widget.
  bool? switchDestacadoValue;
  // State field(s) for SwitchRecomendado widget.
  bool? switchRecomendadoValue;
  // State field(s) for DropDownCategoria widget.
  String? dropDownCategoriaValue;
  FormFieldController<String>? dropDownCategoriaValueController;
  // State field(s) for etiquetaProducto widget.
  FocusNode? etiquetaProductoFocusNode;
  TextEditingController? etiquetaProductoController;
  String? Function(BuildContext, String?)? etiquetaProductoControllerValidator;
  String? _etiquetaProductoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    precioOriginalControllerValidator = _precioOriginalControllerValidator;
    marcaProductoControllerValidator = _marcaProductoControllerValidator;
    etiquetaProductoControllerValidator = _etiquetaProductoControllerValidator;
  }

  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    indicacionesyContraindicacionesFocusNode?.dispose();
    indicacionesyContraindicacionesController?.dispose();

    mododeusoFocusNode?.dispose();
    mododeusoController?.dispose();

    dosificacionFocusNode?.dispose();
    dosificacionController?.dispose();

    precaucionesFocusNode?.dispose();
    precaucionesController?.dispose();

    analisisFocusNode?.dispose();
    analisisController?.dispose();

    ingredientesFocusNode?.dispose();
    ingredientesController?.dispose();

    tabBarController?.dispose();
    precioOriginalFocusNode?.dispose();
    precioOriginalController?.dispose();

    precioDescuentoFocusNode?.dispose();
    precioDescuentoController?.dispose();

    marcaProductoFocusNode?.dispose();
    marcaProductoController?.dispose();

    etiquetaProductoFocusNode?.dispose();
    etiquetaProductoController?.dispose();

    textFieldFocusNode3?.dispose();
    textController13?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
