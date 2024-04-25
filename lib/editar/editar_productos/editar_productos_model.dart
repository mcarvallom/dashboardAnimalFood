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
import '/pages/componentes/crear_variacion/crear_variacion_widget.dart';
import '/pages/componentes/modificar_variacion/modificar_variacion_widget.dart';
import 'editar_productos_widget.dart' show EditarProductosWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class EditarProductosModel extends FlutterFlowModel<EditarProductosWidget> {
  ///  State fields for stateful widgets in this component.

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
  // State field(s) for txtTamanio widget.
  FocusNode? txtTamanioFocusNode;
  TextEditingController? txtTamanioTextController;
  String? Function(BuildContext, String?)? txtTamanioTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
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
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for txtIngredientes widget.
  FocusNode? txtIngredientesFocusNode;
  TextEditingController? txtIngredientesTextController;
  String? Function(BuildContext, String?)?
      txtIngredientesTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
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
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
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

    txtTamanioFocusNode?.dispose();
    txtTamanioTextController?.dispose();

    txtIndicacionesyContraindicacionesFocusNode?.dispose();
    txtIndicacionesyContraindicacionesTextController?.dispose();

    txtMododeusoFocusNode?.dispose();
    txtMododeusoTextController?.dispose();

    txtDosificacionFocusNode?.dispose();
    txtDosificacionTextController?.dispose();

    txtPrecaucionesFocusNode?.dispose();
    txtPrecaucionesTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController9?.dispose();

    txtIngredientesFocusNode?.dispose();
    txtIngredientesTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController11?.dispose();

    txtRebajaFocusNode?.dispose();
    txtRebajaTextController?.dispose();

    txtMarcaFocusNode?.dispose();
    txtMarcaTextController?.dispose();

    textFieldFocusNode3?.dispose();
    textController14?.dispose();

    etiquetaProductoFocusNode?.dispose();
    etiquetaProductoTextController?.dispose();
  }
}
