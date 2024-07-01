import '/components/barra_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import 'editar_sub_categoria_widget.dart' show EditarSubCategoriaWidget;
import 'package:flutter/material.dart';

class EditarSubCategoriaModel
    extends FlutterFlowModel<EditarSubCategoriaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for topMovil component.
  late TopMovilModel topMovilModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  // Model for barraMenu component.
  late BarraMenuModel barraMenuModel;

  @override
  void initState(BuildContext context) {
    topMovilModel = createModel(context, () => TopMovilModel());
    barraMenuModel = createModel(context, () => BarraMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topMovilModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    barraMenuModel.dispose();
  }
}
