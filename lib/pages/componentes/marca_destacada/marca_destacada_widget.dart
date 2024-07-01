import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'marca_destacada_model.dart';
export 'marca_destacada_model.dart';

class MarcaDestacadaWidget extends StatefulWidget {
  const MarcaDestacadaWidget({
    super.key,
    this.parameter1,
    required this.marca,
  });

  final bool? parameter1;
  final DocumentReference? marca;

  @override
  State<MarcaDestacadaWidget> createState() => _MarcaDestacadaWidgetState();
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

    _model.switchValue = widget.parameter1!;
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: _model.switchValue!,
      onChanged: (newValue) async {
        setState(() => _model.switchValue = newValue);
        if (newValue) {
          await widget.marca!.update(createMarcaRecordData(
            destacado: true,
          ));
        } else {
          await widget.marca!.update(createMarcaRecordData(
            destacado: false,
          ));
        }
      },
      activeColor: const Color(0xFF00AC67),
      activeTrackColor: FlutterFlowTheme.of(context).accent1,
      inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
      inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
    );
  }
}
