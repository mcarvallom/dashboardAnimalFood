import '/components/barra_menu2_widget.dart';
import '/components/barra_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/stock_page/stock_page_widget.dart';
import '/pages/componentes/top_movil_vendedor/top_movil_vendedor_widget.dart';
import 'stock_vendedor_widget.dart' show StockVendedorWidget;
import 'package:flutter/material.dart';

class StockVendedorModel extends FlutterFlowModel<StockVendedorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for barraMenu component.
  late BarraMenuModel barraMenuModel;
  // Model for barraMenu2 component.
  late BarraMenu2Model barraMenu2Model;
  // Model for topMovilVendedor component.
  late TopMovilVendedorModel topMovilVendedorModel;
  // Model for stockPage component.
  late StockPageModel stockPageModel;

  @override
  void initState(BuildContext context) {
    barraMenuModel = createModel(context, () => BarraMenuModel());
    barraMenu2Model = createModel(context, () => BarraMenu2Model());
    topMovilVendedorModel = createModel(context, () => TopMovilVendedorModel());
    stockPageModel = createModel(context, () => StockPageModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    barraMenuModel.dispose();
    barraMenu2Model.dispose();
    topMovilVendedorModel.dispose();
    stockPageModel.dispose();
  }
}
