import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/control_stock/control_stock_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'control_stock_movil_model.dart';
export 'control_stock_movil_model.dart';

class ControlStockMovilWidget extends StatefulWidget {
  const ControlStockMovilWidget({
    super.key,
    this.producto,
  });

  final DocumentReference? producto;

  @override
  State<ControlStockMovilWidget> createState() =>
      _ControlStockMovilWidgetState();
}

class _ControlStockMovilWidgetState extends State<ControlStockMovilWidget> {
  late ControlStockMovilModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ControlStockMovilModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.variedades = await queryVariacionRecordOnce(
        parent: widget.producto,
      );
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

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: StreamBuilder<ProductoRecord>(
            stream: ProductoRecord.getDocument(widget.producto!),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
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
              final containerProductoRecord = snapshot.data!;
              return Material(
                color: Colors.transparent,
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: StreamBuilder<ProductoRecord>(
                          stream: ProductoRecord.getDocument(widget.producto!),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
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
                            final imageProductoRecord = snapshot.data!;
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                imageProductoRecord.image,
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.contain,
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            StreamBuilder<List<VariacionRecord>>(
                              stream: queryVariacionRecord(
                                parent: widget.producto,
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
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
                                List<VariacionRecord>
                                    conditionalBuilderVariacionRecordList =
                                    snapshot.data!;
                                final conditionalBuilderVariacionRecord =
                                    conditionalBuilderVariacionRecordList
                                            .isNotEmpty
                                        ? conditionalBuilderVariacionRecordList
                                            .first
                                        : null;
                                return Builder(
                                  builder: (context) {
                                    if (conditionalBuilderVariacionRecord !=
                                        null) {
                                      return StreamBuilder<
                                          List<VariacionRecord>>(
                                        stream: queryVariacionRecord(
                                          parent: widget.producto,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    Color(0xFF00AC67),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<VariacionRecord>
                                              columnVariacionRecordList =
                                              snapshot.data!;
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                                columnVariacionRecordList
                                                    .length, (columnIndex) {
                                              final columnVariacionRecord =
                                                  columnVariacionRecordList[
                                                      columnIndex];
                                              return Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '${columnVariacionRecord.tamanio}: ${columnVariacionRecord.rebaja > 0 ? formatNumber(
                                                          columnVariacionRecord
                                                              .rebaja,
                                                          formatType: FormatType
                                                              .decimal,
                                                          decimalType:
                                                              DecimalType
                                                                  .commaDecimal,
                                                          currency: '',
                                                        ) : formatNumber(
                                                          columnVariacionRecord
                                                              .precio,
                                                          formatType: FormatType
                                                              .decimal,
                                                          decimalType:
                                                              DecimalType
                                                                  .commaDecimal,
                                                          currency: '',
                                                        )}',
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 1,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            }),
                                          );
                                        },
                                      );
                                    } else {
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Text(
                                          containerProductoRecord.rebaja > 0
                                              ? formatNumber(
                                                  containerProductoRecord
                                                      .rebaja,
                                                  formatType:
                                                      FormatType.decimal,
                                                  decimalType:
                                                      DecimalType.commaDecimal,
                                                  currency: '',
                                                )
                                              : formatNumber(
                                                  containerProductoRecord.price,
                                                  formatType:
                                                      FormatType.decimal,
                                                  decimalType:
                                                      DecimalType.commaDecimal,
                                                  currency: '',
                                                ),
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      );
                                    }
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 10.0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                StreamBuilder<List<VariacionRecord>>(
                                  stream: queryVariacionRecord(
                                    parent: widget.producto,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
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
                                    List<VariacionRecord>
                                        controlStockVariacionRecordList =
                                        snapshot.data!;
                                    return wrapWithModel(
                                      model: _model.controlStockModel,
                                      updateCallback: () => setState(() {}),
                                      updateOnChange: true,
                                      child: ControlStockWidget(
                                        producto: widget.producto,
                                        variaciones:
                                            controlStockVariacionRecordList
                                                .map((e) => e.reference)
                                                .toList(),
                                      ),
                                    );
                                  },
                                ),
                              ].divide(SizedBox(height: 10.0)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
