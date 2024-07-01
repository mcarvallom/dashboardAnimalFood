import '/components/barra_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/agregar_producto_component/agregar_producto_component_widget.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import '/pages/componentes/top_movil_vendedor/top_movil_vendedor_widget.dart';
import 'agregar_producto_widget.dart' show AgregarProductoWidget;
import 'package:flutter/material.dart';

class AgregarProductoModel extends FlutterFlowModel<AgregarProductoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for barraMenu component.
  late BarraMenuModel barraMenuModel;
  // Model for topMovil component.
  late TopMovilModel topMovilModel;
  // Model for topMovilVendedor component.
  late TopMovilVendedorModel topMovilVendedorModel;
  // Model for agregarProductoComponent component.
  late AgregarProductoComponentModel agregarProductoComponentModel;

  @override
  void initState(BuildContext context) {
    barraMenuModel = createModel(context, () => BarraMenuModel());
    topMovilModel = createModel(context, () => TopMovilModel());
    topMovilVendedorModel = createModel(context, () => TopMovilVendedorModel());
    agregarProductoComponentModel =
        createModel(context, () => AgregarProductoComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    barraMenuModel.dispose();
    topMovilModel.dispose();
    topMovilVendedorModel.dispose();
    agregarProductoComponentModel.dispose();
  }
}
