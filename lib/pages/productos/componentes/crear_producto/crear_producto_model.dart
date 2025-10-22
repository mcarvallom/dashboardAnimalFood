import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/request_manager.dart';

import 'crear_producto_widget.dart' show CrearProductoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CrearProductoModel extends FlutterFlowModel<CrearProductoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_crearImagenProducto = false;
  FFUploadedFile uploadedLocalFile_crearImagenProducto =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (subirmedia)] action in Image widget.
  ApiCallResponse? subirMediaeditarproducto;
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  String? _nombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe ingresar un nombre';
    }

    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe ingresar una descripción';
    }

    return null;
  }

  // State field(s) for categoria widget.
  String? categoriaValue;
  FormFieldController<String>? categoriaValueController;
  // State field(s) for proveedor widget.
  int? proveedorValue;
  FormFieldController<int>? proveedorValueController;
  // State field(s) for precio widget.
  FocusNode? precioFocusNode;
  TextEditingController? precioTextController;
  late MaskTextInputFormatter precioMask;
  String? Function(BuildContext, String?)? precioTextControllerValidator;
  String? _precioTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe ingresar precio';
    }

    return null;
  }

  // State field(s) for precioCompra widget.
  FocusNode? precioCompraFocusNode;
  TextEditingController? precioCompraTextController;
  late MaskTextInputFormatter precioCompraMask;
  String? Function(BuildContext, String?)? precioCompraTextControllerValidator;
  // State field(s) for isTop widget.
  bool? isTopValue;
  // State field(s) for isDestacado widget.
  bool? isDestacadoValue;
  // State field(s) for isDisponible widget.
  bool? isDisponibleValue;

  /// Query cache managers for this widget.

  final _categoriaCrearProductoManager =
      FutureRequestManager<List<CategoraRow>>();
  Future<List<CategoraRow>> categoriaCrearProducto({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<CategoraRow>> Function() requestFn,
  }) =>
      _categoriaCrearProductoManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCategoriaCrearProductoCache() =>
      _categoriaCrearProductoManager.clear();
  void clearCategoriaCrearProductoCacheKey(String? uniqueKey) =>
      _categoriaCrearProductoManager.clearRequest(uniqueKey);

  final _proveedoresManager = FutureRequestManager<List<ProveedoresRow>>();
  Future<List<ProveedoresRow>> proveedores({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ProveedoresRow>> Function() requestFn,
  }) =>
      _proveedoresManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProveedoresCache() => _proveedoresManager.clear();
  void clearProveedoresCacheKey(String? uniqueKey) =>
      _proveedoresManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    nombreTextControllerValidator = _nombreTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
    precioTextControllerValidator = _precioTextControllerValidator;
  }

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    precioFocusNode?.dispose();
    precioTextController?.dispose();

    precioCompraFocusNode?.dispose();
    precioCompraTextController?.dispose();

    /// Dispose query cache managers for this widget.

    clearCategoriaCrearProductoCache();

    clearProveedoresCache();
  }
}
