import '/auth/firebase_auth/auth_util.dart';
import '/components/barra_menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/agregar_producto_component/agregar_producto_component_widget.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import '/pages/componentes/top_movil_vendedor/top_movil_vendedor_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'agregar_producto_model.dart';
export 'agregar_producto_model.dart';

class AgregarProductoWidget extends StatefulWidget {
  const AgregarProductoWidget({
    super.key,
    this.colorInicio,
    this.colorOrdenes,
    Color? colorProductos,
    this.colorAnalisis,
    this.colorEmpleados,
    this.colorBanner,
    this.colorAjustes,
    this.colorCategorias,
  }) : colorProductos = colorProductos ?? const Color(0xFF39A3EF);

  final Color? colorInicio;
  final Color? colorOrdenes;
  final Color colorProductos;
  final Color? colorAnalisis;
  final Color? colorEmpleados;
  final Color? colorBanner;
  final Color? colorAjustes;
  final Color? colorCategorias;

  @override
  State<AgregarProductoWidget> createState() => _AgregarProductoWidgetState();
}

class _AgregarProductoWidgetState extends State<AgregarProductoWidget> {
  late AgregarProductoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgregarProductoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().nombrePagina = 'Productos';
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
              width: kBreakpointMedium,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (!valueOrDefault<bool>(
                        currentUserDocument?.isInventario, false))
                      AuthUserStreamWidget(
                        builder: (context) => wrapWithModel(
                          model: _model.topMovilModel,
                          updateCallback: () => setState(() {}),
                          child: const TopMovilWidget(),
                        ),
                      ),
                    if (valueOrDefault<bool>(
                        currentUserDocument?.isInventario, false))
                      AuthUserStreamWidget(
                        builder: (context) => wrapWithModel(
                          model: _model.topMovilVendedorModel,
                          updateCallback: () => setState(() {}),
                          child: const TopMovilVendedorWidget(),
                        ),
                      ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, -1.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Material(
                            color: Colors.transparent,
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Icon(
                                Icons.chevron_left_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 35.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: wrapWithModel(
                        model: _model.agregarProductoComponentModel,
                        updateCallback: () => setState(() {}),
                        child: const AgregarProductoComponentWidget(),
                      ),
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
