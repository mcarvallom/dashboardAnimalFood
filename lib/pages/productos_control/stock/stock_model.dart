import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/stock_page/stock_page_widget.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import 'stock_widget.dart' show StockWidget;
import 'package:flutter/material.dart';

class StockModel extends FlutterFlowModel<StockWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topMovil component.
  late TopMovilModel topMovilModel;
  // Model for stockPage component.
  late StockPageModel stockPageModel;

  @override
  void initState(BuildContext context) {
    topMovilModel = createModel(context, () => TopMovilModel());
    stockPageModel = createModel(context, () => StockPageModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topMovilModel.dispose();
    stockPageModel.dispose();
  }
}
