import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/variacion_stock/variacion_stock_widget.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'control_stock_model.dart';
export 'control_stock_model.dart';

class ControlStockWidget extends StatefulWidget {
  const ControlStockWidget({
    super.key,
    this.producto,
    this.variaciones,
  });

  final DocumentReference? producto;
  final List<DocumentReference>? variaciones;

  @override
  State<ControlStockWidget> createState() => _ControlStockWidgetState();
}

class _ControlStockWidgetState extends State<ControlStockWidget> {
  late ControlStockModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ControlStockModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.variacion = await queryVariacionRecordOnce(
        parent: widget.producto,
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      setState(() {
        FFAppState().productoStock = widget.producto;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        decoration: const BoxDecoration(),
        child: Builder(
          builder: (context) {
            if (_model.variacion != null) {
              return Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 20.0),
                child: Builder(
                  builder: (context) {
                    final stocks =
                        widget.variaciones?.map((e) => e).toList().toList() ??
                            [];
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: stocks.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 20.0),
                      itemBuilder: (context, stocksIndex) {
                        final stocksItem = stocks[stocksIndex];
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 20.0, 0.0),
                              child: StreamBuilder<VariacionRecord>(
                                stream: VariacionRecord.getDocument(stocksItem),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return const Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFF00AC67),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  final textVariacionRecord = snapshot.data!;
                                  return Text(
                                    textVariacionRecord.tamanio,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  );
                                },
                              ),
                            ),
                            StreamBuilder<VariacionRecord>(
                              stream: VariacionRecord.getDocument(stocksItem),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return const Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          Color(0xFF00AC67),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final variacionStockVariacionRecord =
                                    snapshot.data!;
                                return VariacionStockWidget(
                                  key: Key(
                                      'Keyfo3_${stocksIndex}_of_${stocks.length}'),
                                  stock: variacionStockVariacionRecord.stock,
                                  variacion:
                                      variacionStockVariacionRecord.reference,
                                );
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              );
            } else {
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StreamBuilder<ProductoRecord>(
                    stream: ProductoRecord.getDocument(widget.producto!),
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
                      final stockSinVProductoRecord = snapshot.data!;
                      return Container(
                        width: 160.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                        ),
                        child: FlutterFlowCountController(
                          decrementIconBuilder: (enabled) => FaIcon(
                            FontAwesomeIcons.minus,
                            color: enabled
                                ? FlutterFlowTheme.of(context).error
                                : FlutterFlowTheme.of(context).alternate,
                            size: 20.0,
                          ),
                          incrementIconBuilder: (enabled) => FaIcon(
                            FontAwesomeIcons.plus,
                            color: enabled
                                ? const Color(0xFFFF8159)
                                : FlutterFlowTheme.of(context).alternate,
                            size: 20.0,
                          ),
                          countBuilder: (count) => Text(
                            count.toString(),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          count: _model.stockSinVValue ??=
                              stockSinVProductoRecord.stock,
                          updateCount: (count) async {
                            setState(() => _model.stockSinVValue = count);
                            await widget.producto!
                                .update(createProductoRecordData(
                              stock: _model.stockSinVValue,
                            ));
                          },
                          stepSize: 1,
                        ),
                      );
                    },
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
