import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/componentes/marca_destacada/marca_destacada_widget.dart';
import 'opciones_marca_widget.dart' show OpcionesMarcaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OpcionesMarcaModel extends FlutterFlowModel<OpcionesMarcaWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for marcaDestacada component.
  late MarcaDestacadaModel marcaDestacadaModel;

  @override
  void initState(BuildContext context) {
    marcaDestacadaModel = createModel(context, () => MarcaDestacadaModel());
  }

  @override
  void dispose() {
    marcaDestacadaModel.dispose();
  }
}
