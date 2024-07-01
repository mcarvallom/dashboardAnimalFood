import '/auth/firebase_auth/auth_util.dart';
import '/components/barra_menu2_widget.dart';
import '/components/barra_menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/stock_page/stock_page_widget.dart';
import '/pages/componentes/top_movil_vendedor/top_movil_vendedor_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'stock_vendedor_model.dart';
export 'stock_vendedor_model.dart';

class StockVendedorWidget extends StatefulWidget {
  const StockVendedorWidget({
    super.key,
    Color? colorProductos,
    this.nombre,
  }) : colorProductos = colorProductos ?? const Color(0xFFE6A5E5);

  final Color colorProductos;
  final String? nombre;

  @override
  State<StockVendedorWidget> createState() => _StockVendedorWidgetState();
}

class _StockVendedorWidgetState extends State<StockVendedorWidget> {
  late StockVendedorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StockVendedorModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.onesignalLogin(
        currentUserUid,
      );
      FFAppState().busquedaActiva = false;
      FFAppState().nombrePagina = 'Stock';
      setState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: Builder(
            builder: (context) {
              if (!valueOrDefault<bool>(
                      currentUserDocument?.isVendedor, false) &&
                  valueOrDefault<bool>(currentUserDocument?.isAdmin, false)) {
                return wrapWithModel(
                  model: _model.barraMenuModel,
                  updateCallback: () => setState(() {}),
                  child: const BarraMenuWidget(),
                );
              } else {
                return wrapWithModel(
                  model: _model.barraMenu2Model,
                  updateCallback: () => setState(() {}),
                  child: const BarraMenu2Widget(),
                );
              }
            },
          ),
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: SafeArea(
              child: Container(
                width: kBreakpointSmall,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.topMovilVendedorModel,
                      updateCallback: () => setState(() {}),
                      child: const TopMovilVendedorWidget(),
                    ),
                    wrapWithModel(
                      model: _model.stockPageModel,
                      updateCallback: () => setState(() {}),
                      updateOnChange: true,
                      child: const StockPageWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
