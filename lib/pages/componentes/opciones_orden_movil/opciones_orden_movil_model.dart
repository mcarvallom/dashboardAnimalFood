import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/status_pedido/status_pedido_widget.dart';
import 'opciones_orden_movil_widget.dart' show OpcionesOrdenMovilWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
