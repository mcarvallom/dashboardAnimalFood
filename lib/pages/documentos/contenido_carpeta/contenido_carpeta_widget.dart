import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/componentes/ver_imagenes/ver_imagenes_widget.dart';
import '/pages/documentos/componentes/agregar_archivo/agregar_archivo_widget.dart';
import '/pages/documentos/componentes/cargando_archivos/cargando_archivos_widget.dart';
import '/pages/documentos/componentes/opciones_contenido_carpeta/opciones_contenido_carpeta_widget.dart';
import '/pages/documentos/componentes/sin_archivos/sin_archivos_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'contenido_carpeta_model.dart';
export 'contenido_carpeta_model.dart';

class ContenidoCarpetaWidget extends StatefulWidget {
  const ContenidoCarpetaWidget({
    super.key,
    required this.carpeta,
  });

  final CarpetasRow? carpeta;

  static String routeName = 'contenidoCarpeta';
  static String routePath = '/contenidoCarpeta';

  @override
  State<ContenidoCarpetaWidget> createState() => _ContenidoCarpetaWidgetState();
}

class _ContenidoCarpetaWidgetState extends State<ContenidoCarpetaWidget> {
  late ContenidoCarpetaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContenidoCarpetaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () async {
              await showDialog(
                context: context,
                builder: (dialogContext) {
                  return Dialog(
                    elevation: 0,
                    insetPadding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    alignment: AlignmentDirectional(0.0, 0.0)
                        .resolve(Directionality.of(context)),
                    child: GestureDetector(
                      onTap: () {
                        FocusScope.of(dialogContext).unfocus();
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      child: AgregarArchivoWidget(
                        carpeta: widget.carpeta!,
                      ),
                    ),
                  );
                },
              );

              safeSetState(() {
                _model.clearContenidoCarpetaCache();
                _model.requestCompleted2 = false;
              });
              await _model.waitForRequestCompleted2();
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 8.0,
            child: Icon(
              Icons.add_rounded,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.safePop();
                        },
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).bordeGris,
                            ),
                          ),
                          child: Icon(
                            Icons.chevron_left_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.carpeta?.nombre,
                          'carpeta',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ].divide(SizedBox(width: 10.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Filtro:',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            child: FlutterFlowDropDown<int>(
                              controller: _model.diaValueController ??=
                                  FormFieldController<int>(null),
                              options: List<int>.from(() {
                                if ((_model.seleccionarMesValue == 1) ||
                                    (_model.seleccionarMesValue == 3) ||
                                    (_model.seleccionarMesValue == 5) ||
                                    (_model.seleccionarMesValue == 7) ||
                                    (_model.seleccionarMesValue == 8) ||
                                    (_model.seleccionarMesValue == 10) ||
                                    (_model.seleccionarMesValue == 12)) {
                                  return FFAppConstants.mes31Dias;
                                } else if (_model.seleccionarMesValue == 2) {
                                  return FFAppConstants.mes28dias;
                                } else if ((_model.seleccionarMesValue == 4) ||
                                    (_model.seleccionarMesValue == 6) ||
                                    (_model.seleccionarMesValue == 9) ||
                                    (_model.seleccionarMesValue == 11)) {
                                  return FFAppConstants.mes30Dias;
                                } else {
                                  return FFAppConstants.mes29Dias;
                                }
                              }()),
                              optionLabels: () {
                                if ((_model.seleccionarMesValue == 1) ||
                                    (_model.seleccionarMesValue == 3) ||
                                    (_model.seleccionarMesValue == 5) ||
                                    (_model.seleccionarMesValue == 7) ||
                                    (_model.seleccionarMesValue == 8) ||
                                    (_model.seleccionarMesValue == 10) ||
                                    (_model.seleccionarMesValue == 12)) {
                                  return FFAppConstants.mes31Dias;
                                } else if (_model.seleccionarMesValue == 2) {
                                  return FFAppConstants.mes28dias;
                                } else if ((_model.seleccionarMesValue == 4) ||
                                    (_model.seleccionarMesValue == 6) ||
                                    (_model.seleccionarMesValue == 9) ||
                                    (_model.seleccionarMesValue == 11)) {
                                  return FFAppConstants.mes30Dias;
                                } else {
                                  return FFAppConstants.mes29Dias;
                                }
                              }()
                                  .map((e) => e.toString())
                                  .toList(),
                              onChanged: (val) async {
                                safeSetState(() => _model.diaValue = val);
                                safeSetState(() {
                                  _model.clearContenidoCarpetaCache();
                                  _model.requestCompleted2 = false;
                                });
                                await _model.waitForRequestCompleted2();
                              },
                              width: 90.0,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Día',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).bordeGris,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                          Flexible(
                            child: FlutterFlowDropDown<int>(
                              controller:
                                  _model.seleccionarMesValueController ??=
                                      FormFieldController<int>(
                                _model.seleccionarMesValue ??=
                                    functions.mesActual(),
                              ),
                              options: List<int>.from(FFAppConstants.mesesNum),
                              optionLabels: FFAppConstants.meses,
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.seleccionarMesValue = val);
                                safeSetState(() {
                                  _model.clearContenidoCarpetaCache();
                                  _model.requestCompleted2 = false;
                                });
                                await _model.waitForRequestCompleted2();
                              },
                              width: 300.0,
                              height: 40.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              searchTextStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Seleccionar mes...',
                              searchHintText: 'Buscar...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).bordeGris,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: true,
                              isMultiSelect: false,
                            ),
                          ),
                          Flexible(
                            child: FlutterFlowDropDown<int>(
                              controller:
                                  _model.seleccionarAnnioValueController ??=
                                      FormFieldController<int>(
                                _model.seleccionarAnnioValue ??= 2025,
                              ),
                              options: List<int>.from([2024, 2025]),
                              optionLabels: ['2024', '2025'],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.seleccionarAnnioValue = val);
                                safeSetState(() {
                                  _model.clearContenidoCarpetaCache();
                                  _model.requestCompleted2 = false;
                                });
                                await _model.waitForRequestCompleted2();
                              },
                              width: 300.0,
                              height: 40.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              searchTextStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Seleccionar año...',
                              searchHintText: 'Buscar...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).bordeGris,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: true,
                              isMultiSelect: false,
                            ),
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                    ].divide(SizedBox(height: 10.0)),
                  ),
                  if ((_model.diaValue != null) &&
                      (_model.seleccionarMesValue != null) &&
                      (_model.seleccionarAnnioValue != null))
                    FutureBuilder<List<ArchivosCarpetaRow>>(
                      future: _model
                          .contenidoCarpeta(
                        requestFn: () => ArchivosCarpetaTable().queryRows(
                          queryFn: (q) => q
                              .eqOrNull(
                                'carpeta',
                                widget.carpeta?.id,
                              )
                              .eqOrNull(
                                'fecha_documento',
                                supaSerialize<DateTime>(
                                    functions.formatDateForSupabase(
                                        _model.seleccionarAnnioValue!,
                                        _model.seleccionarMesValue!,
                                        _model.diaValue!)),
                              )
                              .order('created_at'),
                        ),
                      )
                          .then((result) {
                        _model.requestCompleted2 = true;
                        return result;
                      }),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return CargandoArchivosWidget();
                        }
                        List<ArchivosCarpetaRow>
                            gridViewArchivosCarpetaRowList = snapshot.data!;

                        if (gridViewArchivosCarpetaRowList.isEmpty) {
                          return Center(
                            child: Container(
                              height: MediaQuery.sizeOf(context).height * 0.5,
                              child: SinArchivosWidget(),
                            ),
                          );
                        }

                        return RefreshIndicator(
                          onRefresh: () async {
                            safeSetState(() {
                              _model.clearContenidoCarpetaCache();
                              _model.requestCompleted2 = false;
                            });
                            await _model.waitForRequestCompleted2();
                            _model.clearContenidoCarpetaCache();
                          },
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              childAspectRatio: 1.0,
                            ),
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: gridViewArchivosCarpetaRowList.length,
                            itemBuilder: (context, gridViewIndex) {
                              final gridViewArchivosCarpetaRow =
                                  gridViewArchivosCarpetaRowList[gridViewIndex];
                              return Builder(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: VerImagenesWidget(
                                              img: gridViewArchivosCarpetaRow
                                                  .urlArchivo,
                                              nombre: valueOrDefault<String>(
                                                gridViewArchivosCarpetaRow
                                                    .nombreArchivo,
                                                'Sin título',
                                              ),
                                              descripcion:
                                                  valueOrDefault<String>(
                                                gridViewArchivosCarpetaRow
                                                    .descripcion,
                                                'Sin descripción',
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  onLongPress: () async {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: GestureDetector(
                                            onTap: () {
                                              FocusScope.of(dialogContext)
                                                  .unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child:
                                                OpcionesContenidoCarpetaWidget(
                                              archivo:
                                                  gridViewArchivosCarpetaRow,
                                            ),
                                          ),
                                        );
                                      },
                                    );

                                    safeSetState(() {
                                      _model.clearContenidoCarpetaCache();
                                      _model.requestCompleted2 = false;
                                    });
                                    await _model.waitForRequestCompleted2();
                                  },
                                  child: Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: OctoImage(
                                              placeholderBuilder: (_) =>
                                                  SizedBox.expand(
                                                child: Image(
                                                  image: BlurHashImage(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/admin-a-f-25ec2l/assets/pzt8vz1mj1tz/logo_animalfood.png'),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              image: NetworkImage(
                                                valueOrDefault<String>(
                                                  gridViewArchivosCarpetaRow
                                                      .urlArchivo.firstOrNull,
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/admin-a-f-25ec2l/assets/pzt8vz1mj1tz/logo_animalfood.png',
                                                ),
                                              ),
                                              width: 100.0,
                                              height: 80.0,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              gridViewArchivosCarpetaRow
                                                  .nombreArchivo,
                                              'nombre',
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                          Text(
                                            dateTimeFormat(
                                              "relative",
                                              gridViewArchivosCarpetaRow
                                                  .createdAt,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  if (!((_model.diaValue != null) &&
                      (_model.seleccionarMesValue != null) &&
                      (_model.seleccionarAnnioValue != null)))
                    FutureBuilder<List<ArchivosCarpetaRow>>(
                      future: _model
                          .contenidoCarpeta(
                        requestFn: () => ArchivosCarpetaTable().queryRows(
                          queryFn: (q) => q
                              .eqOrNull(
                                'carpeta',
                                widget.carpeta?.id,
                              )
                              .order('created_at'),
                        ),
                      )
                          .then((result) {
                        _model.requestCompleted1 = true;
                        return result;
                      }),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return CargandoArchivosWidget();
                        }
                        List<ArchivosCarpetaRow>
                            gridViewArchivosCarpetaRowList = snapshot.data!;

                        if (gridViewArchivosCarpetaRowList.isEmpty) {
                          return Center(
                            child: Container(
                              height: MediaQuery.sizeOf(context).height * 0.5,
                              child: SinArchivosWidget(),
                            ),
                          );
                        }

                        return RefreshIndicator(
                          onRefresh: () async {
                            safeSetState(() {
                              _model.clearContenidoCarpetaCache();
                              _model.requestCompleted1 = false;
                            });
                            await _model.waitForRequestCompleted1();
                            _model.clearContenidoCarpetaCache();
                          },
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              childAspectRatio: 1.0,
                            ),
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: gridViewArchivosCarpetaRowList.length,
                            itemBuilder: (context, gridViewIndex) {
                              final gridViewArchivosCarpetaRow =
                                  gridViewArchivosCarpetaRowList[gridViewIndex];
                              return Builder(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: VerImagenesWidget(
                                              img: gridViewArchivosCarpetaRow
                                                  .urlArchivo,
                                              nombre: valueOrDefault<String>(
                                                gridViewArchivosCarpetaRow
                                                    .nombreArchivo,
                                                'Sin título',
                                              ),
                                              descripcion:
                                                  valueOrDefault<String>(
                                                gridViewArchivosCarpetaRow
                                                    .descripcion,
                                                'Sin descripción',
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  onLongPress: () async {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: GestureDetector(
                                            onTap: () {
                                              FocusScope.of(dialogContext)
                                                  .unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child:
                                                OpcionesContenidoCarpetaWidget(
                                              archivo:
                                                  gridViewArchivosCarpetaRow,
                                            ),
                                          ),
                                        );
                                      },
                                    );

                                    safeSetState(() {
                                      _model.clearContenidoCarpetaCache();
                                      _model.requestCompleted1 = false;
                                    });
                                    await _model.waitForRequestCompleted1();
                                  },
                                  child: Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              valueOrDefault<String>(
                                                gridViewArchivosCarpetaRow
                                                    .urlArchivo.firstOrNull,
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/admin-a-f-25ec2l/assets/pzt8vz1mj1tz/logo_animalfood.png',
                                              ),
                                              width: 100.0,
                                              height: 80.0,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              gridViewArchivosCarpetaRow
                                                  .nombreArchivo,
                                              'nombre',
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                          Text(
                                            dateTimeFormat(
                                              "relative",
                                              gridViewArchivosCarpetaRow
                                                  .createdAt,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                ]
                    .divide(SizedBox(height: 16.0))
                    .addToStart(SizedBox(height: 16.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
