import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'switch_admin_model.dart';
export 'switch_admin_model.dart';

class SwitchAdminWidget extends StatefulWidget {
  const SwitchAdminWidget({
    super.key,
    this.switchAdmin,
    required this.usuario,
  });

  final bool? switchAdmin;
  final DocumentReference? usuario;

  @override
  State<SwitchAdminWidget> createState() => _SwitchAdminWidgetState();
}

class _SwitchAdminWidgetState extends State<SwitchAdminWidget> {
  late SwitchAdminModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchAdminModel());

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
      value: _model.switchValue ??= widget.switchAdmin!,
      onChanged: (newValue) async {
        setState(() => _model.switchValue = newValue!);
        if (newValue!) {
          await widget.usuario!.update(createUserRecordData(
            isAdmin: true,
          ));
        } else {
          await widget.usuario!.update(createUserRecordData(
            isAdmin: false,
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
