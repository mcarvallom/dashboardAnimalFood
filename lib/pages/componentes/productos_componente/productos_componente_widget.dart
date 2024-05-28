import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/componentes/opcion_producto/opcion_producto_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:text_search/text_search.dart';
import 'productos_componente_model.dart';
export 'productos_componente_model.dart';

class ProductosComponenteWidget extends StatefulWidget {
  const ProductosComponenteWidget({super.key});

  @override
  State<ProductosComponenteWidget> createState() =>
      _ProductosComponenteWidgetState();
}

class _ProductosComponenteWidgetState extends State<ProductosComponenteWidget> {
  late ProductosComponenteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductosComponenteModel());

    _model.buscarProductoTextController ??= TextEditingController();
    _model.buscarProductoFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: StreamBuilder<List<ProductoRecord>>(
                    stream: queryProductoRecord(),
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
                      List<ProductoRecord> containerProductoRecordList =
                          snapshot.data!;
                      return Container(
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _model.buscarProductoTextController,
                                focusNode: _model.buscarProductoFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.buscarProductoTextController',
                                  const Duration(milliseconds: 2000),
                                  () async {
                                    safeSetState(() {
                                      _model.simpleSearchResults = TextSearch(
                                        containerProductoRecordList
                                            .map(
                                              (record) =>
                                                  TextSearchItem.fromTerms(
                                                      record, [
                                                record.name,
                                                record.codigoBarras
                                              ]),
                                            )
                                            .toList(),
                                      )
                                          .search(_model
                                              .buscarProductoTextController
                                              .text)
                                          .map((r) => r.object)
                                          .toList();
                                    });
                                    setState(() {
                                      FFAppState().busquedaActiva = true;
                                    });
                                  },
                                ),
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Buscar producto...',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFF00AC67),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFF00AC67),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                validator: _model
                                    .buscarProductoTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed(
                                  'agregarProducto',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                    ),
                                  },
                                );
                              },
                              text: 'Crear producto',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).verdeApp,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ].divide(const SizedBox(width: 10.0)),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: StreamBuilder<List<ProductoRecord>>(
              stream: queryProductoRecord(
                queryBuilder: (productoRecord) => productoRecord.whereIn('name',
                    _model.simpleSearchResults.map((e) => e.name).toList()),
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
                List<ProductoRecord> containerProductoRecordList =
                    snapshot.data!;
                return Container(
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: const BoxDecoration(),
                  child: Builder(
                    builder: (context) {
                      final productos = containerProductoRecordList.toList();
                      return FlutterFlowDataTable<ProductoRecord>(
                        controller: _model.paginatedDataTableController,
                        data: productos,
                        columnsBuilder: (onSortChanged) => [
                          DataColumn2(
                            label: DefaultTextStyle.merge(
                              softWrap: true,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Producto',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                          DataColumn2(
                            label: DefaultTextStyle.merge(
                              softWrap: true,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Opción',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                        dataRowBuilder: (productosItem, productosIndex,
                                selected, onSelectChanged) =>
                            DataRow(
                          color: MaterialStateProperty.all(
                            productosIndex % 2 == 0
                                ? FlutterFlowTheme.of(context)
                                    .secondaryBackground
                                : FlutterFlowTheme.of(context)
                                    .primaryBackground,
                          ),
                          cells: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      productosItem.image,
                                      width: 40.0,
                                      height: 40.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      productosItem.name,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: OpcionProductoWidget(
                                          infoProducto: productosItem.reference,
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 3.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    width: 50.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Icon(
                                      Icons.keyboard_control_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ].map((c) => DataCell(c)).toList(),
                        ),
                        paginated: true,
                        selectable: false,
                        hidePaginator: false,
                        showFirstLastButtons: false,
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        headingRowHeight: 50.0,
                        dataRowHeight: 48.0,
                        columnSpacing: 60.0,
                        headingRowColor: FlutterFlowTheme.of(context).verdeApp,
                        borderRadius: BorderRadius.circular(8.0),
                        addHorizontalDivider: true,
                        addTopAndBottomDivider: false,
                        hideDefaultHorizontalDivider: false,
                        horizontalDividerColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        horizontalDividerThickness: 1.0,
                        addVerticalDivider: false,
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ].addToEnd(const SizedBox(height: 30.0)),
      ),
    );
  }
}
