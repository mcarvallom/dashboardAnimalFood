import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'switch_delivery_model.dart';
export 'switch_delivery_model.dart';

class SwitchDeliveryWidget extends StatefulWidget {
  const SwitchDeliveryWidget({
    Key? key,
    this.switchDelivery,
    required this.usuario,
  }) : super(key: key);

  final bool? switchDelivery;
  final DocumentReference? usuario;

  @override
  _SwitchDeliveryWidgetState createState() => _SwitchDeliveryWidgetState();
}

class _SwitchDeliveryWidgetState extends State<SwitchDeliveryWidget> {
  late SwitchDeliveryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchDeliveryModel());

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
      value: _model.switchValue ??= widget.switchDelivery!,
      onChanged: (newValue) async {
        setState(() => _model.switchValue = newValue!);
        if (newValue!) {
          await widget.usuario!.update(createUserRecordData(
            isDelivery: true,
          ));
        } else {
          await widget.usuario!.update(createUserRecordData(
            isDelivery: false,
          ));
        }
      },
      activeColor: FlutterFlowTheme.of(context).primary,
      activeTrackColor: FlutterFlowTheme.of(context).accent1,
      inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
      inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
    );
  }
}
