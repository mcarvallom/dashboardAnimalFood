import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_productos_widget.dart' show EditarProductosWidget;
import 'package:flutter/material.dart';

class EditarProductosModel extends FlutterFlowModel<EditarProductosWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;
  // State field(s) for txtCodeBarra widget.
  FocusNode? txtCodeBarraFocusNode;
  TextEditingController? txtCodeBarraTextController;
  String? Function(BuildContext, String?)? txtCodeBarraTextControllerValidator;
  var escanearP = '';
  // State field(s) for txtIndicacionesyContraindicaciones widget.
  FocusNode? txtIndicacionesyContraindicacionesFocusNode;
  TextEditingController? txtIndicacionesyContraindicacionesTextController;
  String? Function(BuildContext, String?)?
      txtIndicacionesyContraindicacionesTextControllerValidator;
  // State field(s) for txtMododeuso widget.
  FocusNode? txtMododeusoFocusNode;
  TextEditingController? txtMododeusoTextController;
  String? Function(BuildContext, String?)? txtMododeusoTextControllerValidator;
  // State field(s) for txtDosificacion widget.
  FocusNode? txtDosificacionFocusNode;
  TextEditingController? txtDosificacionTextController;
  String? Function(BuildContext, String?)?
      txtDosificacionTextControllerValidator;
  // State field(s) for txtPrecauciones widget.
  FocusNode? txtPrecaucionesFocusNode;
  TextEditingController? txtPrecaucionesTextController;
  String? Function(BuildContext, String?)?
      txtPrecaucionesTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for txtIngredientes widget.
  FocusNode? txtIngredientesFocusNode;
  TextEditingController? txtIngredientesTextController;
  String? Function(BuildContext, String?)?
      txtIngredientesTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TxtRebaja widget.
  FocusNode? txtRebajaFocusNode;
  TextEditingController? txtRebajaTextController;
  String? Function(BuildContext, String?)? txtRebajaTextControllerValidator;
  // State field(s) for txtMarca widget.
  FocusNode? txtMarcaFocusNode;
  TextEditingController? txtMarcaTextController;
  String? Function(BuildContext, String?)? txtMarcaTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for etiquetaProducto widget.
  FocusNode? etiquetaProductoFocusNode;
  TextEditingController? etiquetaProductoTextController;
  String? Function(BuildContext, String?)?
      etiquetaProductoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionTextController?.dispose();

    txtCodeBarraFocusNode?.dispose();
    txtCodeBarraTextController?.dispose();

    txtIndicacionesyContraindicacionesFocusNode?.dispose();
    txtIndicacionesyContraindicacionesTextController?.dispose();

    txtMododeusoFocusNode?.dispose();
    txtMododeusoTextController?.dispose();

    txtDosificacionFocusNode?.dispose();
    txtDosificacionTextController?.dispose();

    txtPrecaucionesFocusNode?.dispose();
    txtPrecaucionesTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController8?.dispose();

    txtIngredientesFocusNode?.dispose();
    txtIngredientesTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController10?.dispose();

    txtRebajaFocusNode?.dispose();
    txtRebajaTextController?.dispose();

    txtMarcaFocusNode?.dispose();
    txtMarcaTextController?.dispose();

    textFieldFocusNode3?.dispose();
    textController13?.dispose();

    etiquetaProductoFocusNode?.dispose();
    etiquetaProductoTextController?.dispose();
  }
}
