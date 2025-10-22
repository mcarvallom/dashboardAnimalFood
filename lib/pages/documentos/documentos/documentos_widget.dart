import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/documentos/componentes/agregar_carpeta/agregar_carpeta_widget.dart';
import '/pages/documentos/componentes/cargando_carpetas/cargando_carpetas_widget.dart';
import '/pages/documentos/componentes/opciones_carpeta/opciones_carpeta_widget.dart';
import '/pages/documentos/componentes/sin_carpetas/sin_carpetas_widget.dart';
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'documentos_model.dart';
export 'documentos_model.dart';

class DocumentosWidget extends StatefulWidget {
  const DocumentosWidget({super.key});

  static String routeName = 'documentos';
  static String routePath = '/documentos';

  @override
  State<DocumentosWidget> createState() => _DocumentosWidgetState();
}

class _DocumentosWidgetState extends State<DocumentosWidget> {
  late DocumentosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DocumentosModel());

    _model.buscarCarpetaTextController ??= TextEditingController();
    _model.buscarCarpetaFocusNode ??= FocusNode();

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
                barrierDismissible: false,
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
                      child: AgregarCarpetaWidget(),
                    ),
                  );
                },
              );

              safeSetState(() {
                _model.clearDocumentosCache();
                _model.requestCompleted = false;
              });
              await _model.waitForRequestCompleted();
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
                      Text(
                        'Documentos',
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
                    ],
                  ),
                  Container(
                    child: TextFormField(
                      controller: _model.buscarCarpetaTextController,
                      focusNode: _model.buscarCarpetaFocusNode,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.buscarCarpetaTextController',
                        Duration(milliseconds: 20),
                        () async {
                          safeSetState(() {
                            _model.clearDocumentosCache();
                            _model.requestCompleted = false;
                          });
                          await _model.waitForRequestCompleted();
                        },
                      ),
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Buscar carpeta...',
                        labelStyle: FlutterFlowTheme.of(context)
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
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                        hintStyle: FlutterFlowTheme.of(context)
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
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00AC67),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
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
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                      validator: _model.buscarCarpetaTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  FutureBuilder<List<CarpetasRow>>(
                    future: _model
                        .documentos(
                      requestFn: () => CarpetasTable().queryRows(
                        queryFn: (q) => q
                            .eqOrNull(
                              'empresa',
                              3,
                            )
                            .ilike(
                              'nombre',
                              '*${_model.buscarCarpetaTextController.text}*',
                            )
                            .order('nombre', ascending: true),
                      ),
                    )
                        .then((result) {
                      _model.requestCompleted = true;
                      return result;
                    }),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return CargandoCarpetasWidget();
                      }
                      List<CarpetasRow> gridViewCarpetasRowList =
                          snapshot.data!;

                      if (gridViewCarpetasRowList.isEmpty) {
                        return Center(
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.5,
                            child: SinCarpetasWidget(),
                          ),
                        );
                      }

                      return RefreshIndicator(
                        onRefresh: () async {
                          safeSetState(() {
                            _model.clearDocumentosCache();
                            _model.requestCompleted = false;
                          });
                          await _model.waitForRequestCompleted();
                          _model.clearDocumentosCache();
                        },
                        child: GridView.builder(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            0,
                            0,
                            20.0,
                          ),
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
                          itemCount: gridViewCarpetasRowList.length,
                          itemBuilder: (context, gridViewIndex) {
                            final gridViewCarpetasRow =
                                gridViewCarpetasRowList[gridViewIndex];
                            return Builder(
                              builder: (context) => InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    ContenidoCarpetaWidget.routeName,
                                    queryParameters: {
                                      'carpeta': serializeParam(
                                        gridViewCarpetasRow,
                                        ParamType.SupabaseRow,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                onLongPress: () async {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(dialogContext)
                                                .unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: OpcionesCarpetaWidget(
                                            carpeta: gridViewCarpetasRow,
                                          ),
                                        ),
                                      );
                                    },
                                  );

                                  safeSetState(() {
                                    _model.clearDocumentosCache();
                                    _model.requestCompleted = false;
                                  });
                                  await _model.waitForRequestCompleted();
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
                                        Icon(
                                          Icons.folder_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 50.0,
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            gridViewCarpetasRow.nombre,
                                            'nombre carpeta',
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
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 2.0)),
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
