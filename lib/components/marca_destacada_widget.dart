import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'marca_destacada_model.dart';
export 'marca_destacada_model.dart';

class MarcaDestacadaWidget extends StatefulWidget {
  const MarcaDestacadaWidget({
    Key? key,
    this.parameter1,
    required this.marca,
  }) : super(key: key);

  final bool? parameter1;
  final DocumentReference? marca;

  @override
  _MarcaDestacadaWidgetState createState() => _MarcaDestacadaWidgetState();
}

class _MarcaDestacadaWidgetState extends State<MarcaDestacadaWidget> {
  late MarcaDestacadaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MarcaDestacadaModel());

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

    return Switch.adaptive(
      value: _model.switchValue ??= widget.parameter1!,
      onChanged: (newValue) async {
        setState(() => _model.switchValue = newValue!);
        if (newValue!) {
          await widget.marca!.update(createMarcaRecordData(
            destacado: true,
          ));
        } else {
          await widget.marca!.update(createMarcaRecordData(
            destacado: false,
          ));
        }
      },
      activeColor: Color(0xFFFF8159),
      activeTrackColor: FlutterFlowTheme.of(context).accent1,
      inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
      inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
    );
  }
}
