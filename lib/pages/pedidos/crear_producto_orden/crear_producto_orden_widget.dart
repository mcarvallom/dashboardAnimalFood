import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'crear_producto_orden_model.dart';
export 'crear_producto_orden_model.dart';

class CrearProductoOrdenWidget extends StatefulWidget {
  const CrearProductoOrdenWidget({super.key});

  @override
  State<CrearProductoOrdenWidget> createState() =>
      _CrearProductoOrdenWidgetState();
}

class _CrearProductoOrdenWidgetState extends State<CrearProductoOrdenWidget> {
  late CrearProductoOrdenModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CrearProductoOrdenModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

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
        width: kBreakpointSmall,
        decoration: const BoxDecoration(),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                              Text(
                                'Elegir producto',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Flexible(
                                child: StickyHeader(
                                  overlapHeaders: true,
                                  header: Container(
                                    width: double.infinity,
                                    height: 50.0,
                                    decoration: const BoxDecoration(),
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController1,
                                        focusNode: _model.textFieldFocusNode1,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.textController1',
                                          const Duration(milliseconds: 2000),
                                          () async {
                                            await queryProductoRecordOnce()
                                                .then(
                                                  (records) => _model
                                                          .simpleSearchResults =
                                                      TextSearch(
                                                    records
                                                        .map(
                                                          (record) =>
                                                              TextSearchItem
                                                                  .fromTerms(
                                                                      record, [
                                                            record.name
                                                          ]),
                                                        )
                                                        .toList(),
                                                  )
                                                          .search(_model
                                                              .textController1
                                                              .text)
                                                          .map((r) => r.object)
                                                          .toList(),
                                                )
                                                .onError((_, __) => _model
                                                    .simpleSearchResults = [])
                                                .whenComplete(
                                                    () => setState(() {}));
                                          },
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Buscar producto...',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .verdeApp,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .verdeApp,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        validator: _model
                                            .textController1Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  content: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: StreamBuilder<List<ProductoRecord>>(
                                      stream: queryProductoRecord(
                                        queryBuilder: (productoRecord) =>
                                            productoRecord.whereIn(
                                                'name',
                                                _model.simpleSearchResults
                                                    .map((e) => e.name)
                                                    .toList()),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return const Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  Color(0xFF00AC67),
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<ProductoRecord>
                                            listViewProductoRecordList =
                                            snapshot.data!;
                                        return ListView.separated(
                                          padding: const EdgeInsets.fromLTRB(
                                            0,
                                            30.0,
                                            0,
                                            30.0,
                                          ),
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewProductoRecordList.length,
                                          separatorBuilder: (_, __) =>
                                              const SizedBox(height: 10.0),
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewProductoRecord =
                                                listViewProductoRecordList[
                                                    listViewIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: StreamBuilder<
                                                  List<VariacionRecord>>(
                                                stream: queryVariacionRecord(
                                                  parent: listViewProductoRecord
                                                      .reference,
                                                  singleRecord: true,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return const Center(
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
                                                            List<
                                                                VariacionRecord>>(
                                                          stream:
                                                              queryVariacionRecord(
                                                            parent:
                                                                listViewProductoRecord
                                                                    .reference,
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return const Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      Color(
                                                                          0xFF00AC67),
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<VariacionRecord>
                                                                listViewVariacionRecordList =
                                                                snapshot.data!;
                                                            return ListView
                                                                .separated(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  listViewVariacionRecordList
                                                                      .length,
                                                              separatorBuilder: (_,
                                                                      __) =>
                                                                  const SizedBox(
                                                                      height:
                                                                          10.0),
                                                              itemBuilder: (context,
                                                                  listViewIndex) {
                                                                final listViewVariacionRecord =
                                                                    listViewVariacionRecordList[
                                                                        listViewIndex];
                                                                return Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      FFAppState()
                                                                              .variacionCrearOrden =
                                                                          listViewVariacionRecord
                                                                              .reference;
                                                                      FFAppState()
                                                                              .producto =
                                                                          listViewVariacionRecord
                                                                              .parentReference;
                                                                      setState(
                                                                          () {});
                                                                    },
                                                                    child:
                                                                        Material(
                                                                      color: Colors
                                                                          .transparent,
                                                                      elevation:
                                                                          2.0,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            1.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                valueOrDefault<Color>(
                                                                              listViewVariacionRecord.reference == FFAppState().variacionCrearOrden ? FlutterFlowTheme.of(context).verdeApp : FlutterFlowTheme.of(context).secondaryBackground,
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                10.0,
                                                                                0.0,
                                                                                10.0),
                                                                            child:
                                                                                Text(
                                                                              '${listViewProductoRecord.name} - ${listViewVariacionRecord.tamanio}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                        );
                                                      } else {
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              FFAppState()
                                                                      .variacionCrearOrden =
                                                                  null;
                                                              FFAppState()
                                                                      .producto =
                                                                  listViewProductoRecord
                                                                      .reference;
                                                              setState(() {});
                                                            },
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 2.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                              child: Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      listViewProductoRecord.reference ==
                                                                              FFAppState()
                                                                                  .producto
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .verdeApp
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                    width: 2.0,
                                                                  ),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            10.0,
                                                                            0.0,
                                                                            10.0),
                                                                    child: Text(
                                                                      listViewProductoRecord
                                                                          .name,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                    },
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ]
                                .divide(const SizedBox(height: 20.0))
                                .addToEnd(const SizedBox(height: 80.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller: _model.textController2,
                              focusNode: _model.textFieldFocusNode2,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Cantidad...',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).verdeApp,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).verdeApp,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              keyboardType: TextInputType.number,
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) {
                          if (FFAppState().variacionCrearOrden != null) {
                            return FFButtonWidget(
                              onPressed: () async {
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                _model.productoCrearV =
                                    await ProductoRecord.getDocumentOnce(
                                        FFAppState().producto!);
                                _model.variacionCrearV =
                                    await VariacionRecord.getDocumentOnce(
                                        FFAppState().variacionCrearOrden!);

                                var selectedItemsRecordReference =
                                    SelectedItemsRecord.collection.doc();
                                await selectedItemsRecordReference
                                    .set(createSelectedItemsRecordData(
                                  producto: _model.productoCrearV?.reference,
                                  variacion:
                                      _model.variacionCrearV?.parentReference ==
                                              _model.productoCrearV?.reference
                                          ? _model.variacionCrearV?.reference
                                          : null,
                                  subTotal: functions.subtotalItem(
                                      int.parse(_model.textController2.text),
                                      FFAppState().variacionCrearOrden != null
                                          ? (_model.variacionCrearV!.rebaja > 0
                                              ? _model.variacionCrearV!.rebaja
                                                  .toDouble()
                                              : _model.variacionCrearV!.precio
                                                  .toDouble())
                                          : (_model.productoCrearV!.rebaja > 0
                                              ? _model.productoCrearV!.rebaja
                                                  .toDouble()
                                              : _model.productoCrearV!.price
                                                  .toDouble())),
                                  cantidad:
                                      int.tryParse(_model.textController2.text),
                                  price:
                                      FFAppState().variacionCrearOrden != null
                                          ? (_model.variacionCrearV!.rebaja > 0
                                              ? _model.variacionCrearV?.rebaja
                                              : _model.variacionCrearV?.precio)
                                          : (_model.productoCrearV!.rebaja > 0
                                              ? _model.productoCrearV?.rebaja
                                              : _model.productoCrearV?.price),
                                  name: _model.productoCrearV?.name,
                                  description:
                                      _model.productoCrearV?.description,
                                  image: _model.productoCrearV?.image,
                                ));
                                _model.selectedItemV =
                                    SelectedItemsRecord.getDocumentFromData(
                                        createSelectedItemsRecordData(
                                          producto:
                                              _model.productoCrearV?.reference,
                                          variacion: _model.variacionCrearV
                                                      ?.parentReference ==
                                                  _model
                                                      .productoCrearV?.reference
                                              ? _model
                                                  .variacionCrearV?.reference
                                              : null,
                                          subTotal: functions.subtotalItem(
                                              int.parse(_model
                                                  .textController2.text),
                                              FFAppState().variacionCrearOrden !=
                                                      null
                                                  ? (_model.variacionCrearV!
                                                              .rebaja >
                                                          0
                                                      ? _model.variacionCrearV!
                                                          .rebaja
                                                          .toDouble()
                                                      : _model.variacionCrearV!
                                                          .precio
                                                          .toDouble())
                                                  : (_model.productoCrearV!
                                                              .rebaja >
                                                          0
                                                      ? _model.productoCrearV!
                                                          .rebaja
                                                          .toDouble()
                                                      : _model
                                                          .productoCrearV!.price
                                                          .toDouble())),
                                          cantidad: int.tryParse(
                                              _model.textController2.text),
                                          price: FFAppState()
                                                      .variacionCrearOrden !=
                                                  null
                                              ? (_model.variacionCrearV!
                                                          .rebaja >
                                                      0
                                                  ? _model
                                                      .variacionCrearV?.rebaja
                                                  : _model
                                                      .variacionCrearV?.precio)
                                              : (_model.productoCrearV!.rebaja >
                                                      0
                                                  ? _model
                                                      .productoCrearV?.rebaja
                                                  : _model
                                                      .productoCrearV?.price),
                                          name: _model.productoCrearV?.name,
                                          description: _model
                                              .productoCrearV?.description,
                                          image: _model.productoCrearV?.image,
                                        ),
                                        selectedItemsRecordReference);
                                FFAppState().addToSelectedItemCrearOrden(
                                    _model.selectedItemV!.reference);
                                setState(() {});
                                Navigator.pop(context);

                                setState(() {});
                              },
                              text: 'Agregar',
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
                            );
                          } else {
                            return FFButtonWidget(
                              onPressed: () async {
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                _model.productoCrear =
                                    await ProductoRecord.getDocumentOnce(
                                        FFAppState().producto!);

                                var selectedItemsRecordReference =
                                    SelectedItemsRecord.collection.doc();
                                await selectedItemsRecordReference
                                    .set(createSelectedItemsRecordData(
                                  producto: _model.productoCrear?.reference,
                                  subTotal: functions.subtotalItem(
                                      int.parse(_model.textController2.text),
                                      _model.productoCrear!.rebaja > 0
                                          ? _model.productoCrear!.rebaja
                                              .toDouble()
                                          : _model.productoCrear!.price
                                              .toDouble()),
                                  cantidad:
                                      int.tryParse(_model.textController2.text),
                                  price: _model.productoCrear!.rebaja > 0
                                      ? _model.productoCrear?.rebaja
                                      : _model.productoCrear?.price,
                                  name: _model.productoCrear?.name,
                                  description:
                                      _model.productoCrear?.description,
                                  image: _model.productoCrear?.image,
                                ));
                                _model.selectedItem =
                                    SelectedItemsRecord.getDocumentFromData(
                                        createSelectedItemsRecordData(
                                          producto:
                                              _model.productoCrear?.reference,
                                          subTotal: functions.subtotalItem(
                                              int.parse(
                                                  _model.textController2.text),
                                              _model.productoCrear!.rebaja > 0
                                                  ? _model.productoCrear!.rebaja
                                                      .toDouble()
                                                  : _model.productoCrear!.price
                                                      .toDouble()),
                                          cantidad: int.tryParse(
                                              _model.textController2.text),
                                          price:
                                              _model.productoCrear!.rebaja > 0
                                                  ? _model.productoCrear?.rebaja
                                                  : _model.productoCrear?.price,
                                          name: _model.productoCrear?.name,
                                          description:
                                              _model.productoCrear?.description,
                                          image: _model.productoCrear?.image,
                                        ),
                                        selectedItemsRecordReference);
                                FFAppState().addToSelectedItemCrearOrden(
                                    _model.selectedItem!.reference);
                                setState(() {});
                                Navigator.pop(context);

                                setState(() {});
                              },
                              text: 'Agregar',
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
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
