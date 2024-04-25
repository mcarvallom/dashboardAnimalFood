import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/componentes/stock_page/stock_page_widget.dart';
import '/pages/componentes/top_movil_vendedor/top_movil_vendedor_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'stock_vendedor_widget.dart' show StockVendedorWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StockVendedorModel extends FlutterFlowModel<StockVendedorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topMovilVendedor component.
  late TopMovilVendedorModel topMovilVendedorModel;
  // Model for stockPage component.
  late StockPageModel stockPageModel;

  @override
  void initState(BuildContext context) {
    topMovilVendedorModel = createModel(context, () => TopMovilVendedorModel());
    stockPageModel = createModel(context, () => StockPageModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topMovilVendedorModel.dispose();
    stockPageModel.dispose();
  }
}
