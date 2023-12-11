import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'status_pedido_model.dart';
export 'status_pedido_model.dart';

class StatusPedidoWidget extends StatefulWidget {
  const StatusPedidoWidget({
    Key? key,
    this.parameter2,
    this.status,
  }) : super(key: key);

  final DocumentReference? parameter2;
  final String? status;

  @override
  _StatusPedidoWidgetState createState() => _StatusPedidoWidgetState();
}

class _StatusPedidoWidgetState extends State<StatusPedidoWidget> {
  late StatusPedidoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusPedidoModel());

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

    return FlutterFlowDropDown<String>(
      controller: _model.dropDownValueController ??=
          FormFieldController<String>(
        _model.dropDownValue ??= widget.status,
      ),
      options: [
        'En proceso',
        'Preparando envío',
        'En camino',
        'Entregado',
        'Pendiente de pago',
        'Fallo en la entrega'
      ],
      onChanged: (val) async {
        setState(() => _model.dropDownValue = val);
        await widget.parameter2!.update(createOrderRecordData(
          status: _model.dropDownValue,
        ));
      },
      width: 300.0,
      height: 30.0,
      textStyle: FlutterFlowTheme.of(context).bodyMedium,
      hintText: 'Seleccione estado',
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: FlutterFlowTheme.of(context).primaryText,
        size: 24.0,
      ),
      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 2.0,
      borderColor: Colors.black,
      borderWidth: 0.0,
      borderRadius: 8.0,
      margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
      hidesUnderline: true,
      isSearchable: false,
      isMultiSelect: false,
    );
  }
}
