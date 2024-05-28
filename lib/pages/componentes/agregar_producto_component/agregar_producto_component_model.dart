import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'agregar_producto_component_widget.dart'
    show AgregarProductoComponentWidget;
import 'package:flutter/material.dart';

class AgregarProductoComponentModel
    extends FlutterFlowModel<AgregarProductoComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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
  // State field(s) for txtStock widget.
  FocusNode? txtStockFocusNode;
  TextEditingController? txtStockTextController;
  String? Function(BuildContext, String?)? txtStockTextControllerValidator;
  String? _txtStockTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Stock requerido';
    }

    return null;
  }

  // State field(s) for marcaProducto widget.
  FocusNode? marcaProductoFocusNode;
  TextEditingController? marcaProductoTextController;
  String? Function(BuildContext, String?)? marcaProductoTextControllerValidator;
  String? _marcaProductoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Marca requerida';
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
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProductoRecord? producto;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    txtStockTextControllerValidator = _txtStockTextControllerValidator;
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

    precioOriginalFocusNode?.dispose();
    precioOriginalTextController?.dispose();

    precioDescuentoFocusNode?.dispose();
    precioDescuentoTextController?.dispose();

    txtStockFocusNode?.dispose();
    txtStockTextController?.dispose();

    marcaProductoFocusNode?.dispose();
    marcaProductoTextController?.dispose();

    etiquetaProductoFocusNode?.dispose();
    etiquetaProductoTextController?.dispose();
  }
}
