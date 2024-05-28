import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/status_pedido/status_pedido_widget.dart';
import 'opciones_orden_movil_widget.dart' show OpcionesOrdenMovilWidget;
import 'package:flutter/material.dart';

class OpcionesOrdenMovilModel
    extends FlutterFlowModel<OpcionesOrdenMovilWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for statusPedido component.
  late StatusPedidoModel statusPedidoModel;

  @override
  void initState(BuildContext context) {
    statusPedidoModel = createModel(context, () => StatusPedidoModel());
  }

  @override
  void dispose() {
    statusPedidoModel.dispose();
  }
}
