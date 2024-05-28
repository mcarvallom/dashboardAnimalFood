import '/backend/backend.dart';
import '/components/preguntas_y_respuestas_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ver_ticket_widget.dart' show VerTicketWidget;
import 'package:flutter/material.dart';

class VerTicketModel extends FlutterFlowModel<VerTicketWidget> {
  ///  Local state fields for this page.

  String? imagen = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UserRecord? usuario;
  // Model for preguntasYRespuestas component.
  late PreguntasYRespuestasModel preguntasYRespuestasModel;

  @override
  void initState(BuildContext context) {
    preguntasYRespuestasModel =
        createModel(context, () => PreguntasYRespuestasModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    preguntasYRespuestasModel.dispose();
  }
}
