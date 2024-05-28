import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'menu_escritorio_model.dart';
export 'menu_escritorio_model.dart';

class MenuEscritorioWidget extends StatefulWidget {
  const MenuEscritorioWidget({
    super.key,
    this.colorInicio,
    this.colorOrdenes,
    this.colorProductos,
    this.colorCategoria,
    this.colorAnalisis,
    this.colorEmpleados,
    this.colorBanners,
    this.colorAjustesTienda,
    this.colorClientes,
    this.nombre,
  });

  final Color? colorInicio;
  final Color? colorOrdenes;
  final Color? colorProductos;
  final Color? colorCategoria;
  final Color? colorAnalisis;
  final Color? colorEmpleados;
  final Color? colorBanners;
  final Color? colorAjustesTienda;
  final Color? colorClientes;
  final String? nombre;

  @override
  State<MenuEscritorioWidget> createState() => _MenuEscritorioWidgetState();
}

class _MenuEscritorioWidgetState extends State<MenuEscritorioWidget> {
  late MenuEscritorioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuEscritorioModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: StreamBuilder<List<TiendaRecord>>(
        stream: queryTiendaRecord(
          singleRecord: true,
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return const Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFF00AC67),
                  ),
                ),
              ),
            );
          }
          List<TiendaRecord> columnTiendaRecordList = snapshot.data!;
          final columnTiendaRecord = columnTiendaRecordList.isNotEmpty
              ? columnTiendaRecordList.first
              : null;
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 20.0),
                            child: Image.asset(
                              'assets/images/logo_animalfood.png',
                              width: 80.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 30.0, 0.0, 10.0),
                  child: Text(
                    'Menú',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (Navigator.of(context).canPop()) {
                        context.pop();
                      }
                      context.pushNamed(
                        'Inicio',
                        queryParameters: {
                          'colorInicio': serializeParam(
                            const Color(0xFFE6A5E5),
                            ParamType.Color,
                          ),
                          'nombre': serializeParam(
                            'Inicio',
                            ParamType.String,
                          ),
                        }.withoutNulls,
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                          ),
                        },
                      );
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          widget.nombre == 'Inicio'
                              ? const Color(0xFFE6A5E5)
                              : Colors.white,
                          Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.home_rounded,
                              color: valueOrDefault<Color>(
                                widget.nombre == 'Inicio'
                                    ? Colors.white
                                    : Colors.black,
                                Colors.black,
                              ),
                              size: 24.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Inicio',
                                style: FlutterFlowTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: valueOrDefault<Color>(
                                        widget.nombre == 'Inicio'
                                            ? Colors.white
                                            : Colors.black,
                                        Colors.black,
                                      ),
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'ordenes',
                        queryParameters: {
                          'colorOrdenes': serializeParam(
                            const Color(0xFFE6A5E5),
                            ParamType.Color,
                          ),
                          'nombre': serializeParam(
                            'Órdenes',
                            ParamType.String,
                          ),
                        }.withoutNulls,
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                          ),
                        },
                      );
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          widget.nombre == 'Órdenes'
                              ? const Color(0xFFE6A5E5)
                              : Colors.white,
                          Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.shoppingBag,
                              color: valueOrDefault<Color>(
                                widget.nombre == 'Órdenes'
                                    ? Colors.white
                                    : Colors.black,
                                Colors.black,
                              ),
                              size: 24.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Órdenes',
                                style: FlutterFlowTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: valueOrDefault<Color>(
                                        widget.nombre == 'Órdenes'
                                            ? Colors.white
                                            : Colors.black,
                                        Colors.black,
                                      ),
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'productos',
                        queryParameters: {
                          'colorProductos': serializeParam(
                            const Color(0xFFE6A5E5),
                            ParamType.Color,
                          ),
                          'nombre': serializeParam(
                            'Productos',
                            ParamType.String,
                          ),
                        }.withoutNulls,
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                          ),
                        },
                      );
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          widget.nombre == 'Productos'
                              ? const Color(0xFFE6A5E5)
                              : Colors.white,
                          Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.boxOpen,
                              color: valueOrDefault<Color>(
                                widget.nombre == 'Productos'
                                    ? Colors.white
                                    : Colors.black,
                                Colors.black,
                              ),
                              size: 24.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Productos',
                                style: FlutterFlowTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: valueOrDefault<Color>(
                                        widget.nombre == 'Productos'
                                            ? Colors.white
                                            : Colors.black,
                                        Colors.black,
                                      ),
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'Sub-categorias',
                        queryParameters: {
                          'colorCategorias': serializeParam(
                            const Color(0xFFE6A5E5),
                            ParamType.Color,
                          ),
                          'nombre': serializeParam(
                            'Categorías',
                            ParamType.String,
                          ),
                        }.withoutNulls,
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                          ),
                        },
                      );
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          widget.nombre == 'Categorías'
                              ? const Color(0xFFE6A5E5)
                              : Colors.white,
                          Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.list,
                              color: valueOrDefault<Color>(
                                widget.nombre == 'Categorías'
                                    ? Colors.white
                                    : Colors.black,
                                Colors.black,
                              ),
                              size: 24.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Categorías',
                                style: FlutterFlowTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: valueOrDefault<Color>(
                                        widget.nombre == 'Categorías'
                                            ? Colors.white
                                            : Colors.black,
                                        Colors.black,
                                      ),
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'agregarMarca',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                          ),
                        },
                      );
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: widget.colorAnalisis,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.dog,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Marcas',
                                style: FlutterFlowTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'empleados',
                        queryParameters: {
                          'colorEmpleados': serializeParam(
                            const Color(0xFFE6A5E5),
                            ParamType.Color,
                          ),
                          'nombre': serializeParam(
                            'Empleados',
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          widget.nombre == 'Empleados'
                              ? const Color(0xFFE6A5E5)
                              : Colors.white,
                          Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.group,
                              color: valueOrDefault<Color>(
                                widget.nombre == 'Empleados'
                                    ? Colors.white
                                    : Colors.black,
                                Colors.black,
                              ),
                              size: 24.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Empleados',
                                style: FlutterFlowTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: valueOrDefault<Color>(
                                        widget.nombre == 'Empleados'
                                            ? Colors.white
                                            : Colors.black,
                                        Colors.black,
                                      ),
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'clientes',
                        queryParameters: {
                          'colorClientes': serializeParam(
                            const Color(0xFFE6A5E5),
                            ParamType.Color,
                          ),
                          'nombre': serializeParam(
                            'Clientes',
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          widget.nombre == 'Clientes'
                              ? const Color(0xFFE6A5E5)
                              : Colors.white,
                          Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.group,
                              color: valueOrDefault<Color>(
                                widget.nombre == 'Clientes'
                                    ? Colors.white
                                    : Colors.black,
                                Colors.black,
                              ),
                              size: 24.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Clientes',
                                style: FlutterFlowTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: valueOrDefault<Color>(
                                        widget.nombre == 'Clientes'
                                            ? Colors.white
                                            : Colors.black,
                                        Colors.black,
                                      ),
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        widget.nombre == 'Ajustes de la tienda'
                            ? const Color(0xFFE6A5E5)
                            : Colors.white,
                        Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.settings,
                            color: valueOrDefault<Color>(
                              widget.nombre == 'Ajustes de la tienda'
                                  ? Colors.white
                                  : Colors.black,
                              Colors.black,
                            ),
                            size: 24.0,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Ajustes de la tienda',
                              style: FlutterFlowTheme.of(context)
                                  .displayMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: valueOrDefault<Color>(
                                      widget.nombre == 'Ajustes de la tienda'
                                          ? Colors.white
                                          : Colors.black,
                                      Colors.black,
                                    ),
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
