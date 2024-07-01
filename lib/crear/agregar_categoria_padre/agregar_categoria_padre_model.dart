import '/components/barra_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import 'agregar_categoria_padre_widget.dart' show AgregarCategoriaPadreWidget;
import 'package:flutter/material.dart';

class AgregarCategoriaPadreModel
    extends FlutterFlowModel<AgregarCategoriaPadreWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for topMovil component.
  late TopMovilModel topMovilModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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
