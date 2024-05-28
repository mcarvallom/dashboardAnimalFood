import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/status_pedido/status_pedido_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'opciones_orden_movil_model.dart';
export 'opciones_orden_movil_model.dart';

class OpcionesOrdenMovilWidget extends StatefulWidget {
  const OpcionesOrdenMovilWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.listaProductos,
  });

  final DocumentReference? parameter1;
  final String? parameter2;
  final OrderRecord? parameter3;
  final List<DocumentReference>? listaProductos;

  @override
  State<OpcionesOrdenMovilWidget> createState() =>
      _OpcionesOrdenMovilWidgetState();
}

class _OpcionesOrdenMovilWidgetState extends State<OpcionesOrdenMovilWidget> {
  late OpcionesOrdenMovilModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpcionesOrdenMovilModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 4.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        constraints: BoxConstraints(
          minHeight: MediaQuery.sizeOf(context).height * 0.2,
          maxHeight: MediaQuery.sizeOf(context).height * 1.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 30.0, 10.0, 40.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              wrapWithModel(
                model: _model.statusPedidoModel,
                updateCallback: () => setState(() {}),
                child: StatusPedidoWidget(
                  parameter2: widget.parameter1,
                  status: widget.parameter2,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'detalleOrden',
                      queryParameters: {
                        'detalleOrden': serializeParam(
                          widget.parameter3,
                          ParamType.Document,
                        ),
                        'listaProducto': serializeParam(
                          widget.listaProductos,
                          ParamType.DocumentReference,
                          true,
                        ),
                      }.withoutNulls,
                      extra: <String, dynamic>{
                        'detalleOrden': widget.parameter3,
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                        ),
                      },
                    );
                  },
                  child: Material(
                    color: Colors.transparent,
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: AutoSizeText(
                              'Ver orden',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Container(
                              width: 30.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: const Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: FaIcon(
                                  FontAwesomeIcons.eye,
                                  color: Colors.black,
                                  size: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
