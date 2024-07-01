import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/barra_menu2_widget.dart';
import '/components/barra_menu_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/componentes/opciones_orden_movil/opciones_orden_movil_widget.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import '/pages/componentes/top_movil_vendedor/top_movil_vendedor_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'ordenes_model.dart';
export 'ordenes_model.dart';

class OrdenesWidget extends StatefulWidget {
  const OrdenesWidget({
    super.key,
    Color? colorOrdenes,
    this.nombre,
  }) : colorOrdenes = colorOrdenes ?? const Color(0xFFE6A5E5);

  final Color colorOrdenes;
  final String? nombre;

  @override
  State<OrdenesWidget> createState() => _OrdenesWidgetState();
}

class _OrdenesWidgetState extends State<OrdenesWidget> {
  late OrdenesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrdenesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().busquedaActiva = false;
      FFAppState().nombrePagina = 'Ordenes';
      setState(() {});
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
            child: Container(
              width: kBreakpointSmall,
              height: MediaQuery.sizeOf(context).height * 1.0,
              constraints: const BoxConstraints(
                maxWidth: 767.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (!valueOrDefault<bool>(
                      currentUserDocument?.isVendedor, false))
                    AuthUserStreamWidget(
                      builder: (context) => wrapWithModel(
                        model: _model.topMovilModel,
                        updateCallback: () => setState(() {}),
                        child: const TopMovilWidget(),
                      ),
                    ),
                  if (valueOrDefault<bool>(
                      currentUserDocument?.isVendedor, false))
                    AuthUserStreamWidget(
                      builder: (context) => wrapWithModel(
                        model: _model.topMovilVendedorModel,
                        updateCallback: () => setState(() {}),
                        child: const TopMovilVendedorWidget(),
                      ),
                    ),
                  if (currentUserEmail == 'marccarvallom@gmail.com')
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'crearOrden',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                              ),
                            },
                          );
                        },
                        text: 'Crear orden',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFF4EFFBA),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF005935),
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).verdeApp,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Container(
                                          width: 200.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color: const Color(0xFF00AC67),
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: const [
                                                'En proceso',
                                                'Preparando envío',
                                                'En camino',
                                                'Entregado',
                                                'Pendiente de pago',
                                                'Fallo en la entrega'
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.dropDownValue = val),
                                              width: 200.0,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Estado',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 0.0,
                                              borderColor: Colors.transparent,
                                              borderWidth: 0.0,
                                              borderRadius: 0.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: StreamBuilder<List<OrderRecord>>(
                                      stream: queryOrderRecord(),
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
                                        List<OrderRecord>
                                            containerOrderRecordList =
                                            snapshot.data!;
                                        return Container(
                                          decoration: const BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: TextFormField(
                                              controller: _model.textController,
                                              focusNode:
                                                  _model.textFieldFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.textController',
                                                const Duration(milliseconds: 2000),
                                                () async {
                                                  safeSetState(() {
                                                    _model.simpleSearchResults =
                                                        TextSearch(
                                                      containerOrderRecordList
                                                          .map(
                                                            (record) =>
                                                                TextSearchItem
                                                                    .fromTerms(
                                                                        record,
                                                                        [
                                                                  record.name,
                                                                  record
                                                                      .apellido,
                                                                  record
                                                                      .apellidoPagador,
                                                                  record
                                                                      .nombrePagador
                                                                ]),
                                                          )
                                                          .toList(),
                                                    )
                                                            .search(_model
                                                                .textController
                                                                .text)
                                                            .map(
                                                                (r) => r.object)
                                                            .toList();
                                                  });
                                                  FFAppState().busquedaActiva =
                                                      true;
                                                  setState(() {});
                                                },
                                              ),
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    'Buscar orden por nombre cliente...',
                                                labelStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                    ),
                                                hintStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                    ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFF00AC67),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFF00AC67),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                prefixIcon: Icon(
                                                  Icons.search_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              validator: _model
                                                  .textControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: StreamBuilder<List<OrderRecord>>(
                        stream: queryOrderRecord(
                          queryBuilder: (orderRecord) => orderRecord
                              .where(
                                'status',
                                isEqualTo: _model.dropDownValue,
                              )
                              .whereIn(
                                  'name',
                                  _model.simpleSearchResults
                                      .map((e) => e.name)
                                      .toList())
                              .orderBy('created_at', descending: true),
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
                          List<OrderRecord> containerOrderRecordList =
                              snapshot.data!;
                          return Container(
                            decoration: const BoxDecoration(),
                            child: Builder(
                              builder: (context) {
                                final ordenes =
                                    containerOrderRecordList.toList();
                                return FlutterFlowDataTable<OrderRecord>(
                                  controller:
                                      _model.paginatedDataTableController,
                                  data: ordenes,
                                  columnsBuilder: (onSortChanged) => [
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            'Cliente',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            'Fecha',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            'Total \$',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                  dataRowBuilder: (ordenesItem, ordenesIndex,
                                          selected, onSelectChanged) =>
                                      DataRow(
                                    color: WidgetStateProperty.all(
                                      ordenesIndex % 2 == 0
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                    ),
                                    cells: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 10.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'detalleOrden',
                                                queryParameters: {
                                                  'detalleOrden':
                                                      serializeParam(
                                                    ordenesItem,
                                                    ParamType.Document,
                                                  ),
                                                  'listaProducto':
                                                      serializeParam(
                                                    ordenesItem.selectedItems,
                                                    ParamType.DocumentReference,
                                                    isList: true,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'detalleOrden': ordenesItem,
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );
                                            },
                                            child: AutoSizeText(
                                              '${ordenesItem.name} ${ordenesItem.apellido}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 10.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'detalleOrden',
                                                queryParameters: {
                                                  'detalleOrden':
                                                      serializeParam(
                                                    ordenesItem,
                                                    ParamType.Document,
                                                  ),
                                                  'listaProducto':
                                                      serializeParam(
                                                    ordenesItem.selectedItems,
                                                    ParamType.DocumentReference,
                                                    isList: true,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'detalleOrden': ordenesItem,
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );
                                            },
                                            child: AutoSizeText(
                                              dateTimeFormat(
                                                'd/M/y',
                                                ordenesItem.createdAt!,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 10.0),
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
                                                    context.pushNamed(
                                                      'detalleOrden',
                                                      queryParameters: {
                                                        'detalleOrden':
                                                            serializeParam(
                                                          ordenesItem,
                                                          ParamType.Document,
                                                        ),
                                                        'listaProducto':
                                                            serializeParam(
                                                          ordenesItem
                                                              .selectedItems,
                                                          ParamType
                                                              .DocumentReference,
                                                          isList: true,
                                                        ),
                                                      }.withoutNulls,
                                                      extra: <String, dynamic>{
                                                        'detalleOrden':
                                                            ordenesItem,
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  child: AutoSizeText(
                                                    formatNumber(
                                                      ordenesItem.amount,
                                                      formatType:
                                                          FormatType.decimal,
                                                      decimalType: DecimalType
                                                          .commaDecimal,
                                                      currency: '',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              OpcionesOrdenMovilWidget(
                                                            parameter1:
                                                                ordenesItem
                                                                    .reference,
                                                            parameter2:
                                                                ordenesItem
                                                                    .status,
                                                            parameter3:
                                                                ordenesItem,
                                                            listaProductos:
                                                                ordenesItem
                                                                    .selectedItems,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 4.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  child: Container(
                                                    width: 30.0,
                                                    height: 30.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                    ),
                                                    child: const Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Icon(
                                                        Icons.more_vert,
                                                        color: Colors.black,
                                                        size: 20.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ].map((c) => DataCell(c)).toList(),
                                  ),
                                  paginated: true,
                                  selectable: false,
                                  hidePaginator: false,
                                  showFirstLastButtons: false,
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  headingRowHeight: 56.0,
                                  dataRowHeight: 48.0,
                                  columnSpacing: 20.0,
                                  headingRowColor:
                                      FlutterFlowTheme.of(context).verdeApp,
                                  borderRadius: BorderRadius.circular(8.0),
                                  addHorizontalDivider: true,
                                  addTopAndBottomDivider: false,
                                  hideDefaultHorizontalDivider: true,
                                  horizontalDividerColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  horizontalDividerThickness: 1.0,
                                  addVerticalDivider: false,
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
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
