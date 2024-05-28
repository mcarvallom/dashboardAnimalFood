import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/status_pedido/status_pedido_widget.dart';
import 'opciones_pedido_delivery_widget.dart' show OpcionesPedidoDeliveryWidget;
import 'package:flutter/material.dart';

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
