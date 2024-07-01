import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/status_pedido/status_pedido_widget.dart';
import '/pages/componentes/subir_evidencia_entrega_fallida/subir_evidencia_entrega_fallida_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'opciones_pedido_delivery_model.dart';
export 'opciones_pedido_delivery_model.dart';

class OpcionesPedidoDeliveryWidget extends StatefulWidget {
  const OpcionesPedidoDeliveryWidget({
    super.key,
    required this.status,
    required this.orden,
  });

  final String? status;
  final DocumentReference? orden;

  @override
  State<OpcionesPedidoDeliveryWidget> createState() =>
      _OpcionesPedidoDeliveryWidgetState();
}

class _OpcionesPedidoDeliveryWidgetState
    extends State<OpcionesPedidoDeliveryWidget> {
  late OpcionesPedidoDeliveryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpcionesPedidoDeliveryModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        StreamBuilder<OrderRecord>(
          stream: OrderRecord.getDocument(widget.orden!),
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
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 50.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.statusPedidoModel,
                      updateCallback: () => setState(() {}),
                      child: StatusPedidoWidget(
                        status: widget.status,
                        parameter2: widget.orden,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '¿Pedido entregado?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          StreamBuilder<UserRecord>(
                            stream: UserRecord.getDocument(
                                containerOrderRecord.cliente!),
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
                              final iconButtonUserRecord = snapshot.data!;
                              return FlutterFlowIconButton(
                                borderColor: const Color(0xFFEE8B60),
                                borderRadius: 20.0,
                                borderWidth: 1.0,
                                buttonSize: 40.0,
                                fillColor: const Color(0xFFFFADFD),
                                icon: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  var confirmDialogResponse = await showDialog<
                                          bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text('Confirmación'),
                                            content: const Text('¿Pedido entregado?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: const Text('No'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: const Text('Sí'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ??
                                      false;
                                  if (confirmDialogResponse) {
                                    await widget.orden!
                                        .update(createOrderRecordData(
                                      status: 'Entregado',
                                      repartidor: currentUserReference,
                                    ));
                                    _model.apiResultrjf1 =
                                        await EmailsCall.call(
                                      email:
                                          containerOrderRecord.hasEmailEnvio()
                                              ? containerOrderRecord.emailEnvio
                                              : containerOrderRecord.email,
                                      plantilla:
                                          '8cb0fb7b-9216-493c-a0a8-12ca2b632cdd',
                                      titulo: 'Pedido entregado',
                                    );

                                    await actions.sendNotification(
                                      'Pedido entregado',
                                      'Estado pedido',
                                      iconButtonUserRecord.uid,
                                    );
                                    Navigator.pop(context);
                                  }

                                  setState(() {});
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '¿Entrega fallida?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: const Color(0xFFEE8B60),
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: const Color(0xFFFF444F),
                            icon: const Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.pop(context);
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                useSafeArea: true,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: SubirEvidenciaEntregaFallidaWidget(
                                      orden: widget.orden!,
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
