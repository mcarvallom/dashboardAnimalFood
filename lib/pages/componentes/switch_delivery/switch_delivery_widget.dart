import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'switch_delivery_model.dart';
export 'switch_delivery_model.dart';

class SwitchDeliveryWidget extends StatefulWidget {
  const SwitchDeliveryWidget({
    super.key,
    this.switchDelivery,
    required this.usuario,
  });

  final bool? switchDelivery;
  final DocumentReference? usuario;

  @override
  State<SwitchDeliveryWidget> createState() => _SwitchDeliveryWidgetState();
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

    _model.switchValue = widget.switchDelivery!;
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
          await widget.usuario!.update(createUserRecordData(
            isDelivery: true,
          ));
        } else {
          await widget.usuario!.update(createUserRecordData(
            isDelivery: false,
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
