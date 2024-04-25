import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'switch_empleado_model.dart';
export 'switch_empleado_model.dart';

class SwitchEmpleadoWidget extends StatefulWidget {
  const SwitchEmpleadoWidget({
    super.key,
    this.switchEmpleado,
    required this.usuario,
  });

  final bool? switchEmpleado;
  final DocumentReference? usuario;

  @override
  State<SwitchEmpleadoWidget> createState() => _SwitchEmpleadoWidgetState();
}

class _SwitchEmpleadoWidgetState extends State<SwitchEmpleadoWidget> {
  late SwitchEmpleadoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchEmpleadoModel());

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
      value: _model.switchValue ??= widget.switchEmpleado!,
      onChanged: (newValue) async {
        setState(() => _model.switchValue = newValue!);
        if (newValue!) {
          await widget.usuario!.update(createUserRecordData(
            isVendedor: true,
          ));
        } else {
          await widget.usuario!.update(createUserRecordData(
            isVendedor: false,
          ));
        }
      },
      activeColor: Color(0xFF00AC67),
      activeTrackColor: FlutterFlowTheme.of(context).accent1,
      inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
      inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
    );
  }
}
