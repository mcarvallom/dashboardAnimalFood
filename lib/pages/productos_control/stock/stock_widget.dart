import '/components/barra_menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/stock_page/stock_page_widget.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'stock_model.dart';
export 'stock_model.dart';

class StockWidget extends StatefulWidget {
  const StockWidget({
    super.key,
    Color? colorProductos,
    this.nombre,
  }) : colorProductos = colorProductos ?? const Color(0xFFE6A5E5);

  final Color colorProductos;
  final String? nombre;

  @override
  State<StockWidget> createState() => _StockWidgetState();
}

class _StockWidgetState extends State<StockWidget> {
  late StockModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StockModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
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
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              FFAppState().nombrePagina = 'Productos';
              setState(() {});
            },
            child: wrapWithModel(
              model: _model.barraMenuModel,
              updateCallback: () => setState(() {}),
              child: const BarraMenuWidget(),
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
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
                    model: _model.topMovilModel,
                    updateCallback: () => setState(() {}),
                    child: const TopMovilWidget(),
                  ),
                  wrapWithModel(
                    model: _model.stockPageModel,
                    updateCallback: () => setState(() {}),
                    child: const StockPageWidget(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
