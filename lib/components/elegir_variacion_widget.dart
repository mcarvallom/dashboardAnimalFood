import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'elegir_variacion_model.dart';
export 'elegir_variacion_model.dart';

class ElegirVariacionWidget extends StatefulWidget {
  const ElegirVariacionWidget({
    super.key,
    this.parameter2,
  });

  final DocumentReference? parameter2;

  @override
  State<ElegirVariacionWidget> createState() => _ElegirVariacionWidgetState();
}

class _ElegirVariacionWidgetState extends State<ElegirVariacionWidget> {
  late ElegirVariacionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ElegirVariacionModel());

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

    return StreamBuilder<List<VariacionRecord>>(
      stream: queryVariacionRecord(
        parent: FFAppState().producto,
      ),
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
        List<VariacionRecord> containerVariacionRecordList = snapshot.data!;
        return Container(
          decoration: BoxDecoration(),
          child: FlutterFlowDropDown<String>(
            controller: _model.dropDownValueController ??=
                FormFieldController<String>(null),
            options:
                containerVariacionRecordList.map((e) => e.tamanio).toList(),
            onChanged: (val) async {
              setState(() => _model.dropDownValue = val);
              setState(() {
                FFAppState().variacionCrearOrden = containerVariacionRecordList
                    .where((e) =>
                        containerVariacionRecordList.first.tamanio ==
                        _model.dropDownValue)
                    .toList()
                    .first
                    .reference;
              });
            },
            width: 300.0,
            height: 56.0,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
            hintText: 'Seleccionar variación...',
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 2.0,
            borderColor: FlutterFlowTheme.of(context).verdeApp,
            borderWidth: 1.0,
            borderRadius: 8.0,
            margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
            hidesUnderline: true,
            isOverButton: true,
            isSearchable: false,
            isMultiSelect: false,
          ),
        );
      },
    );
  }
}
