import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/componentes/agregar_variacion/agregar_variacion_widget.dart';
import 'agregar_producto_component_widget.dart'
    show AgregarProductoComponentWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

  // State field(s) for txtCodigoBarras widget.
  FocusNode? txtCodigoBarrasFocusNode;
  TextEditingController? txtCodigoBarrasTextController;
  String? Function(BuildContext, String?)?
      txtCodigoBarrasTextControllerValidator;
  var escanear = '';
  // State field(s) for TxtTamanio widget.
  FocusNode? txtTamanioFocusNode;
  TextEditingController? txtTamanioTextController;
  String? Function(BuildContext, String?)? txtTamanioTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for IndicacionesyContraindicaciones widget.
  FocusNode? indicacionesyContraindicacionesFocusNode;
  TextEditingController? indicacionesyContraindicacionesTextController;
  String? Function(BuildContext, String?)?
      indicacionesyContraindicacionesTextControllerValidator;
  // State field(s) for Mododeuso widget.
  FocusNode? mododeusoFocusNode;
  TextEditingController? mododeusoTextController;
  String? Function(BuildContext, String?)? mododeusoTextControllerValidator;
  // State field(s) for Dosificacion widget.
  FocusNode? dosificacionFocusNode;
  TextEditingController? dosificacionTextController;
  String? Function(BuildContext, String?)? dosificacionTextControllerValidator;
  // State field(s) for Precauciones widget.
  FocusNode? precaucionesFocusNode;
  TextEditingController? precaucionesTextController;
  String? Function(BuildContext, String?)? precaucionesTextControllerValidator;
  // State field(s) for analisis widget.
  FocusNode? analisisFocusNode;
  TextEditingController? analisisTextController;
  String? Function(BuildContext, String?)? analisisTextControllerValidator;
  // State field(s) for Ingredientes widget.
  FocusNode? ingredientesFocusNode;
  TextEditingController? ingredientesTextController;
  String? Function(BuildContext, String?)? ingredientesTextControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for precioOriginal widget.
  FocusNode? precioOriginalFocusNode;
  TextEditingController? precioOriginalTextController;
  String? Function(BuildContext, String?)?
      precioOriginalTextControllerValidator;
  // State field(s) for precioDescuento widget.
  FocusNode? precioDescuentoFocusNode;
  TextEditingController? precioDescuentoTextController;
  String? Function(BuildContext, String?)?
      precioDescuentoTextControllerValidator;
  // State field(s) for marcaProducto widget.
  FocusNode? marcaProductoFocusNode;
  TextEditingController? marcaProductoTextController;
  String? Function(BuildContext, String?)? marcaProductoTextControllerValidator;
  String? _marcaProductoTextControllerValidator(
      BuildContext context, String? val) {
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
  TextEditingController? etiquetaProductoTextController;
  String? Function(BuildContext, String?)?
      etiquetaProductoTextControllerValidator;
  // State field(s) for txtStock widget.
  FocusNode? txtStockFocusNode;
  TextEditingController? txtStockTextController;
  String? Function(BuildContext, String?)? txtStockTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProductoRecord? producto;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    marcaProductoTextControllerValidator =
        _marcaProductoTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    txtCodigoBarrasFocusNode?.dispose();
    txtCodigoBarrasTextController?.dispose();

    txtTamanioFocusNode?.dispose();
    txtTamanioTextController?.dispose();

    indicacionesyContraindicacionesFocusNode?.dispose();
    indicacionesyContraindicacionesTextController?.dispose();

    mododeusoFocusNode?.dispose();
    mododeusoTextController?.dispose();

    dosificacionFocusNode?.dispose();
    dosificacionTextController?.dispose();

    precaucionesFocusNode?.dispose();
    precaucionesTextController?.dispose();

    analisisFocusNode?.dispose();
    analisisTextController?.dispose();

    ingredientesFocusNode?.dispose();
    ingredientesTextController?.dispose();

    tabBarController?.dispose();
    precioOriginalFocusNode?.dispose();
    precioOriginalTextController?.dispose();

    precioDescuentoFocusNode?.dispose();
    precioDescuentoTextController?.dispose();

    marcaProductoFocusNode?.dispose();
    marcaProductoTextController?.dispose();

    etiquetaProductoFocusNode?.dispose();
    etiquetaProductoTextController?.dispose();

    txtStockFocusNode?.dispose();
    txtStockTextController?.dispose();
  }
}
