import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'crear_producto_orden_p_c_model.dart';
export 'crear_producto_orden_p_c_model.dart';

class CrearProductoOrdenPCWidget extends StatefulWidget {
  const CrearProductoOrdenPCWidget({super.key});

  @override
  State<CrearProductoOrdenPCWidget> createState() =>
      _CrearProductoOrdenPCWidgetState();
}

class _CrearProductoOrdenPCWidgetState
    extends State<CrearProductoOrdenPCWidget> {
  late CrearProductoOrdenPCModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CrearProductoOrdenPCModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
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
                              Container(
                                width: double.infinity,
                                height: 50.0,
                                decoration: const BoxDecoration(),
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.textController',
                                      const Duration(milliseconds: 2000),
                                      () async {
                                        await queryProductoRecordOnce()
                                            .then(
                                              (records) =>
                                                  _model.simpleSearchResults =
                                                      TextSearch(
                                                records
                                                    .map(
                                                      (record) => TextSearchItem
                                                          .fromTerms(record,
                                                              [record.name]),
                                                    )
                                                    .toList(),
                                              )
                                                          .search(_model
                                                              .textController
                                                              .text)
                                                          .map((r) => r.object)
                                                          .toList(),
                                            )
                                            .onError((_, __) =>
                                                _model.simpleSearchResults = [])
                                            .whenComplete(
                                                () => setState(() {}));

                                        _model.producto =
                                            await queryProductoRecordOnce(
                                          queryBuilder: (productoRecord) =>
                                              productoRecord.where(
                                            'codigoBarras',
                                            isEqualTo:
                                                _model.textController.text,
                                          ),
                                          singleRecord: true,
                                        ).then((s) => s.firstOrNull);
                                        _model.variacion =
                                            await queryVariacionRecordOnce(
                                          queryBuilder: (variacionRecord) =>
                                              variacionRecord.where(
                                            'codigoBarra',
                                            isEqualTo:
                                                _model.textController.text,
                                          ),
                                          singleRecord: true,
                                        ).then((s) => s.firstOrNull);
                                        if (_model.producto != null) {
                                          var selectedItemsRecordReference1 =
                                              SelectedItemsRecord.collection
                                                  .doc();
                                          await selectedItemsRecordReference1
                                              .set(
                                                  createSelectedItemsRecordData(
                                            producto:
                                                _model.producto?.reference,
                                            subTotal: functions.subtotalItem(
                                                1,
                                                _model.producto!.rebaja > 0
                                                    ? _model.producto!.rebaja
                                                        .toDouble()
                                                    : _model.producto!.price
                                                        .toDouble()),
                                            cantidad: 1,
                                            price: _model.producto!.rebaja > 0
                                                ? _model.producto?.rebaja
                                                : _model.producto?.price,
                                            name: _model.producto?.name,
                                            description:
                                                _model.producto?.description,
                                            image: _model.producto?.image,
                                          ));
                                          _model.selectedItemCodigo =
                                              SelectedItemsRecord.getDocumentFromData(
                                                  createSelectedItemsRecordData(
                                                    producto: _model
                                                        .producto?.reference,
                                                    subTotal:
                                                        functions.subtotalItem(
                                                            1,
                                                            _model.producto!
                                                                        .rebaja >
                                                                    0
                                                                ? _model
                                                                    .producto!
                                                                    .rebaja
                                                                    .toDouble()
                                                                : _model
                                                                    .producto!
                                                                    .price
                                                                    .toDouble()),
                                                    cantidad: 1,
                                                    price: _model.producto!
                                                                .rebaja >
                                                            0
                                                        ? _model
                                                            .producto?.rebaja
                                                        : _model
                                                            .producto?.price,
                                                    name: _model.producto?.name,
                                                    description: _model
                                                        .producto?.description,
                                                    image:
                                                        _model.producto?.image,
                                                  ),
                                                  selectedItemsRecordReference1);
                                          FFAppState()
                                              .addToSelectedItemCrearOrden(
                                                  _model.selectedItemCodigo!
                                                      .reference);
                                          FFAppState().subtotalPC = FFAppState()
                                                  .subtotalPC +
                                              functions.subtotalItem(
                                                  1,
                                                  _model.producto!.rebaja > 0
                                                      ? _model.producto!.rebaja
                                                          .toDouble()
                                                      : _model.producto!.price
                                                          .toDouble());
                                          setState(() {});
                                          setState(() {
                                            _model.textController?.clear();
                                          });
                                        } else if (_model.variacion != null) {
                                          _model.productoVariacion =
                                              await ProductoRecord
                                                  .getDocumentOnce(_model
                                                      .variacion!
                                                      .parentReference);

                                          var selectedItemsRecordReference2 =
                                              SelectedItemsRecord.collection
                                                  .doc();
                                          await selectedItemsRecordReference2
                                              .set(
                                                  createSelectedItemsRecordData(
                                            producto: _model
                                                .variacion?.parentReference,
                                            variacion:
                                                _model.variacion?.reference,
                                            subTotal: functions.subtotalItem(
                                                1,
                                                FFAppState().variacionCrearOrden !=
                                                        null
                                                    ? (_model.variacion!
                                                                .rebaja >
                                                            0
                                                        ? _model
                                                            .variacion!.rebaja
                                                            .toDouble()
                                                        : _model
                                                            .variacion!.precio
                                                            .toDouble())
                                                    : (_model
                                                                .productoVariacion!
                                                                .rebaja >
                                                            0
                                                        ? _model
                                                            .productoVariacion!
                                                            .rebaja
                                                            .toDouble()
                                                        : _model
                                                            .productoVariacion!
                                                            .price
                                                            .toDouble())),
                                            cantidad: 1,
                                            price:
                                                FFAppState().variacionCrearOrden !=
                                                        null
                                                    ? (_model.variacion!
                                                                .rebaja >
                                                            0
                                                        ? _model
                                                            .variacion?.rebaja
                                                        : _model
                                                            .variacion?.precio)
                                                    : (_model.productoVariacion!
                                                                .rebaja >
                                                            0
                                                        ? _model
                                                            .productoVariacion
                                                            ?.rebaja
                                                        : _model
                                                            .productoVariacion
                                                            ?.price),
                                            name:
                                                _model.productoVariacion?.name,
                                            description: _model
                                                .productoVariacion?.description,
                                            image:
                                                _model.productoVariacion?.image,
                                          ));
                                          _model.selectedItemVCodigo =
                                              SelectedItemsRecord.getDocumentFromData(
                                                  createSelectedItemsRecordData(
                                                    producto: _model.variacion
                                                        ?.parentReference,
                                                    variacion: _model
                                                        .variacion?.reference,
                                                    subTotal: functions.subtotalItem(
                                                        1,
                                                        FFAppState().variacionCrearOrden !=
                                                                null
                                                            ? (_model.variacion!
                                                                        .rebaja >
                                                                    0
                                                                ? _model
                                                                    .variacion!
                                                                    .rebaja
                                                                    .toDouble()
                                                                : _model
                                                                    .variacion!
                                                                    .precio
                                                                    .toDouble())
                                                            : (_model.productoVariacion!
                                                                        .rebaja >
                                                                    0
                                                                ? _model
                                                                    .productoVariacion!
                                                                    .rebaja
                                                                    .toDouble()
                                                                : _model
                                                                    .productoVariacion!
                                                                    .price
                                                                    .toDouble())),
                                                    cantidad: 1,
                                                    price: FFAppState()
                                                                .variacionCrearOrden !=
                                                            null
                                                        ? (_model.variacion!
                                                                    .rebaja >
                                                                0
                                                            ? _model.variacion
                                                                ?.rebaja
                                                            : _model.variacion
                                                                ?.precio)
                                                        : (_model.productoVariacion!
                                                                    .rebaja >
                                                                0
                                                            ? _model
                                                                .productoVariacion
                                                                ?.rebaja
                                                            : _model
                                                                .productoVariacion
                                                                ?.price),
                                                    name: _model
                                                        .productoVariacion
                                                        ?.name,
                                                    description: _model
                                                        .productoVariacion
                                                        ?.description,
                                                    image: _model
                                                        .productoVariacion
                                                        ?.image,
                                                  ),
                                                  selectedItemsRecordReference2);
                                          FFAppState()
                                              .addToSelectedItemCrearOrden(
                                                  _model.selectedItemVCodigo!
                                                      .reference);
                                          FFAppState().subtotalPC = FFAppState()
                                                  .subtotalPC +
                                              functions.subtotalItem(
                                                  1,
                                                  FFAppState()
                                                              .variacionCrearOrden !=
                                                          null
                                                      ? (_model.variacion!.rebaja >
                                                              0
                                                          ? _model
                                                              .variacion!.rebaja
                                                              .toDouble()
                                                          : _model
                                                              .variacion!.precio
                                                              .toDouble())
                                                      : (_model.productoVariacion!
                                                                  .rebaja >
                                                              0
                                                          ? _model
                                                              .productoVariacion!
                                                              .rebaja
                                                              .toDouble()
                                                          : _model
                                                              .productoVariacion!
                                                              .price
                                                              .toDouble()));
                                          setState(() {});
                                          setState(() {
                                            _model.textController?.clear();
                                          });
                                        }

                                        setState(() {});
                                      },
                                    ),
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Buscar producto...',
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
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .verdeApp,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              StreamBuilder<List<ProductoRecord>>(
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
                                              AlwaysStoppedAnimation<Color>(
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
                                      0,
                                      0,
                                      50.0,
                                    ),
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewProductoRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 10.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewProductoRecord =
                                          listViewProductoRecordList[
                                              listViewIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
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
                                                      List<VariacionRecord>>(
                                                    stream:
                                                        queryVariacionRecord(
                                                      parent:
                                                          listViewProductoRecord
                                                              .reference,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            listViewVariacionRecordList
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => const SizedBox(
                                                                height: 10.0),
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewVariacionRecord =
                                                              listViewVariacionRecordList[
                                                                  listViewIndex];
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
                                                                    listViewVariacionRecord
                                                                        .reference;
                                                                FFAppState()
                                                                        .producto =
                                                                    listViewVariacionRecord
                                                                        .parentReference;
                                                                setState(() {});
                                                                _model.productoCrearV =
                                                                    await ProductoRecord.getDocumentOnce(
                                                                        FFAppState()
                                                                            .producto!);
                                                                _model.variacionCrearV =
                                                                    await VariacionRecord.getDocumentOnce(
                                                                        FFAppState()
                                                                            .variacionCrearOrden!);

                                                                var selectedItemsRecordReference =
                                                                    SelectedItemsRecord
                                                                        .collection
                                                                        .doc();
                                                                await selectedItemsRecordReference
                                                                    .set(
                                                                        createSelectedItemsRecordData(
                                                                  producto:
                                                                      listViewVariacionRecord
                                                                          .parentReference,
                                                                  variacion: listViewVariacionRecord
                                                                              .parentReference ==
                                                                          FFAppState()
                                                                              .producto
                                                                      ? listViewVariacionRecord
                                                                          .reference
                                                                      : null,
                                                                  subTotal: functions.subtotalItem(
                                                                      1,
                                                                      FFAppState().variacionCrearOrden !=
                                                                              null
                                                                          ? (listViewVariacionRecord.rebaja > 0
                                                                              ? listViewVariacionRecord.rebaja
                                                                                  .toDouble()
                                                                              : listViewVariacionRecord.precio
                                                                                  .toDouble())
                                                                          : (listViewProductoRecord.rebaja > 0
                                                                              ? listViewProductoRecord.rebaja.toDouble()
                                                                              : listViewProductoRecord.price.toDouble())),
                                                                  cantidad: 1,
                                                                  price: FFAppState()
                                                                              .variacionCrearOrden !=
                                                                          null
                                                                      ? (listViewVariacionRecord.rebaja >
                                                                              0
                                                                          ? listViewVariacionRecord
                                                                              .rebaja
                                                                          : listViewVariacionRecord
                                                                              .precio)
                                                                      : (listViewProductoRecord.rebaja > 0
                                                                          ? listViewProductoRecord
                                                                              .rebaja
                                                                          : listViewProductoRecord
                                                                              .price),
                                                                  name:
                                                                      listViewProductoRecord
                                                                          .name,
                                                                  description:
                                                                      listViewProductoRecord
                                                                          .description,
                                                                  image:
                                                                      listViewProductoRecord
                                                                          .image,
                                                                ));
                                                                _model.selectedItemV =
                                                                    SelectedItemsRecord
                                                                        .getDocumentFromData(
                                                                            createSelectedItemsRecordData(
                                                                              producto: listViewVariacionRecord.parentReference,
                                                                              variacion: listViewVariacionRecord.parentReference == FFAppState().producto ? listViewVariacionRecord.reference : null,
                                                                              subTotal: functions.subtotalItem(1, FFAppState().variacionCrearOrden != null ? (listViewVariacionRecord.rebaja > 0 ? listViewVariacionRecord.rebaja.toDouble() : listViewVariacionRecord.precio.toDouble()) : (listViewProductoRecord.rebaja > 0 ? listViewProductoRecord.rebaja.toDouble() : listViewProductoRecord.price.toDouble())),
                                                                              cantidad: 1,
                                                                              price: FFAppState().variacionCrearOrden != null ? (listViewVariacionRecord.rebaja > 0 ? listViewVariacionRecord.rebaja : listViewVariacionRecord.precio) : (listViewProductoRecord.rebaja > 0 ? listViewProductoRecord.rebaja : listViewProductoRecord.price),
                                                                              name: listViewProductoRecord.name,
                                                                              description: listViewProductoRecord.description,
                                                                              image: listViewProductoRecord.image,
                                                                            ),
                                                                            selectedItemsRecordReference);
                                                                FFAppState().addToSelectedItemCrearOrden(_model
                                                                    .selectedItemV!
                                                                    .reference);
                                                                FFAppState()
                                                                    .subtotalPC = FFAppState()
                                                                        .subtotalPC +
                                                                    functions.subtotalItem(
                                                                        1,
                                                                        (FFAppState().variacionCrearOrden != null
                                                                                ? (listViewVariacionRecord.rebaja > 0 ? listViewVariacionRecord.rebaja : listViewVariacionRecord.precio)
                                                                                : (listViewProductoRecord.rebaja > 0 ? listViewProductoRecord.rebaja : listViewProductoRecord.price))
                                                                            .toDouble());
                                                                setState(() {});

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
                                                                child:
                                                                    Container(
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
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        listViewVariacionRecord.reference ==
                                                                                FFAppState().variacionCrearOrden
                                                                            ? FlutterFlowTheme.of(context).verdeApp
                                                                            : FlutterFlowTheme.of(context).secondaryBackground,
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
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
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
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
                                                            .fromSTEB(5.0, 0.0,
                                                                5.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState()
                                                                .variacionCrearOrden =
                                                            null;
                                                        FFAppState().producto =
                                                            listViewProductoRecord
                                                                .reference;
                                                        setState(() {});
                                                        _model.productoCrear =
                                                            await ProductoRecord
                                                                .getDocumentOnce(
                                                                    FFAppState()
                                                                        .producto!);

                                                        var selectedItemsRecordReference =
                                                            SelectedItemsRecord
                                                                .collection
                                                                .doc();
                                                        await selectedItemsRecordReference
                                                            .set(
                                                                createSelectedItemsRecordData(
                                                          producto:
                                                              listViewProductoRecord
                                                                  .reference,
                                                          subTotal: functions.subtotalItem(
                                                              1,
                                                              listViewProductoRecord
                                                                          .rebaja >
                                                                      0
                                                                  ? listViewProductoRecord
                                                                      .rebaja
                                                                      .toDouble()
                                                                  : listViewProductoRecord
                                                                      .price
                                                                      .toDouble()),
                                                          cantidad: 1,
                                                          price: listViewProductoRecord
                                                                      .rebaja >
                                                                  0
                                                              ? listViewProductoRecord
                                                                  .rebaja
                                                              : listViewProductoRecord
                                                                  .price,
                                                          name:
                                                              listViewProductoRecord
                                                                  .name,
                                                          description:
                                                              listViewProductoRecord
                                                                  .description,
                                                          image:
                                                              listViewProductoRecord
                                                                  .image,
                                                        ));
                                                        _model.selectedItem =
                                                            SelectedItemsRecord
                                                                .getDocumentFromData(
                                                                    createSelectedItemsRecordData(
                                                                      producto:
                                                                          listViewProductoRecord
                                                                              .reference,
                                                                      subTotal: functions.subtotalItem(
                                                                          1,
                                                                          listViewProductoRecord.rebaja > 0
                                                                              ? listViewProductoRecord.rebaja.toDouble()
                                                                              : listViewProductoRecord.price.toDouble()),
                                                                      cantidad:
                                                                          1,
                                                                      price: listViewProductoRecord.rebaja > 0
                                                                          ? listViewProductoRecord
                                                                              .rebaja
                                                                          : listViewProductoRecord
                                                                              .price,
                                                                      name: listViewProductoRecord
                                                                          .name,
                                                                      description:
                                                                          listViewProductoRecord
                                                                              .description,
                                                                      image: listViewProductoRecord
                                                                          .image,
                                                                    ),
                                                                    selectedItemsRecordReference);
                                                        FFAppState()
                                                            .addToSelectedItemCrearOrden(
                                                                _model
                                                                    .selectedItem!
                                                                    .reference);
                                                        FFAppState().subtotalPC = FFAppState()
                                                                .subtotalPC +
                                                            functions.subtotalItem(
                                                                1,
                                                                listViewProductoRecord
                                                                            .rebaja >
                                                                        0
                                                                    ? listViewProductoRecord
                                                                        .rebaja
                                                                        .toDouble()
                                                                    : listViewProductoRecord
                                                                        .price
                                                                        .toDouble());
                                                        setState(() {});

                                                        setState(() {});
                                                      },
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 2.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            border: Border.all(
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                listViewProductoRecord
                                                                            .reference ==
                                                                        FFAppState()
                                                                            .producto
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .verdeApp
                                                                    : FlutterFlowTheme.of(
                                                                            context)
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
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
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
          ],
        ),
      ),
    );
  }
}
