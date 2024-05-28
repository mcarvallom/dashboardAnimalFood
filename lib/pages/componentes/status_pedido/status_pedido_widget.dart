import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'status_pedido_model.dart';
export 'status_pedido_model.dart';

class StatusPedidoWidget extends StatefulWidget {
  const StatusPedidoWidget({
    super.key,
    this.parameter2,
    this.status,
  });

  final DocumentReference? parameter2;
  final String? status;

  @override
  State<StatusPedidoWidget> createState() => _StatusPedidoWidgetState();
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
    return StreamBuilder<OrderRecord>(
      stream: OrderRecord.getDocument(widget.parameter2!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return const Center(
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
        final containerOrderRecord = snapshot.data!;
        return Container(
          decoration: const BoxDecoration(),
          child: StreamBuilder<UserRecord>(
            stream: UserRecord.getDocument(containerOrderRecord.cliente!),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return const Center(
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
              final containerUserRecord = snapshot.data!;
              return Container(
                decoration: const BoxDecoration(),
                child: FlutterFlowDropDown<String>(
                  controller: _model.dropDownValueController ??=
                      FormFieldController<String>(
                    _model.dropDownValue ??= widget.status,
                  ),
                  options: const [
                    'En proceso',
                    'Preparando envío',
                    'En camino',
                    'Entregado',
                    'Pendiente de pago',
                    'Fallo en la entrega'
                  ],
                  onChanged: (val) async {
                    setState(() => _model.dropDownValue = val);
                    var shouldSetState = false;

                    await widget.parameter2!.update(createOrderRecordData(
                      status: _model.dropDownValue,
                    ));
                    if (_model.dropDownValue == 'Preparando envío') {
                      _model.apiResultrjf1 = await EmailsCall.call(
                        email: containerOrderRecord.hasEmailEnvio()
                            ? containerOrderRecord.emailEnvio
                            : containerOrderRecord.email,
                        plantilla: '7d3d1566-60c9-4c0e-b30a-b9b64a133971',
                        titulo: 'Preparando envío',
                      );
                      shouldSetState = true;
                      await actions.sendNotificationEstadoPedido(
                        'Preparando envío',
                        'Estado pedido',
                        containerUserRecord.uid,
                      );

                      await widget.parameter2!.update(createOrderRecordData(
                        isPagado: true,
                      ));
                    } else if (_model.dropDownValue == 'En camino') {
                      _model.apiResultrjf2 = await EmailsCall.call(
                        email: containerOrderRecord.hasEmailEnvio()
                            ? containerOrderRecord.emailEnvio
                            : containerOrderRecord.email,
                        plantilla: '50e39307-ab15-4664-a99f-7c66a4903c1b',
                        titulo: 'En camino',
                      );
                      shouldSetState = true;
                      await actions.sendNotificationEstadoPedido(
                        'En camino',
                        'Estado pedido',
                        containerUserRecord.uid,
                      );

                      await widget.parameter2!.update(createOrderRecordData(
                        isPagado: true,
                      ));
                    } else if (_model.dropDownValue == 'Entregado') {
                      _model.apiResultrjf3 = await EmailsCall.call(
                        email: containerOrderRecord.hasEmailEnvio()
                            ? containerOrderRecord.emailEnvio
                            : containerOrderRecord.email,
                        plantilla: '8cb0fb7b-9216-493c-a0a8-12ca2b632cdd',
                        titulo: 'Pedido entregado',
                      );
                      shouldSetState = true;
                      await actions.sendNotificationEstadoPedido(
                        'Pedido entregado',
                        'Estado pedido',
                        containerUserRecord.uid,
                      );

                      await widget.parameter2!.update(createOrderRecordData(
                        isPagado: true,
                      ));
                    } else if (_model.dropDownValue == 'Fallo en la entrega') {
                      _model.apiResultrjf4 = await EmailsCall.call(
                        email: containerOrderRecord.hasEmailEnvio()
                            ? containerOrderRecord.emailEnvio
                            : containerOrderRecord.email,
                        plantilla: '51e6d248-0887-4a52-a2db-5b4d7acc0989',
                        titulo: '¡Fallo en la entrega!',
                      );
                      shouldSetState = true;
                      await actions.sendNotificationEstadoPedido(
                        'Fallo en la entrega',
                        'Estado pedido',
                        containerUserRecord.uid,
                      );
                    } else {
                      if (shouldSetState) setState(() {});
                      return;
                    }

                    if (shouldSetState) setState(() {});
                  },
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 40.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
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
                  margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
