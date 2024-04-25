import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/status_pedido/status_pedido_widget.dart';
import '/pages/componentes/subir_evidencia_entrega_fallida/subir_evidencia_entrega_fallida_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'opciones_pedido_delivery_widget.dart' show OpcionesPedidoDeliveryWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OpcionesPedidoDeliveryModel
    extends FlutterFlowModel<OpcionesPedidoDeliveryWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for statusPedido component.
  late StatusPedidoModel statusPedidoModel;
  // Stores action output result for [Backend Call - API (Emails)] action in IconButton widget.
  ApiCallResponse? apiResultrjf1;

  @override
  void initState(BuildContext context) {
    statusPedidoModel = createModel(context, () => StatusPedidoModel());
  }

  @override
  void dispose() {
    statusPedidoModel.dispose();
  }
}
