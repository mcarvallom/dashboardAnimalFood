import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cantidad_orden_p_c_model.dart';
export 'cantidad_orden_p_c_model.dart';

class CantidadOrdenPCWidget extends StatefulWidget {
  const CantidadOrdenPCWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
  });

  final int? parameter1;
  final int? parameter2;
  final DocumentReference? parameter3;

  @override
  State<CantidadOrdenPCWidget> createState() => _CantidadOrdenPCWidgetState();
}

class _CantidadOrdenPCWidgetState extends State<CantidadOrdenPCWidget> {
  late CantidadOrdenPCModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CantidadOrdenPCModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SelectedItemsRecord>(
      stream: SelectedItemsRecord.getDocument(widget.parameter3!),
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
        final containerSelectedItemsRecord = snapshot.data!;
        return Container(
          decoration: const BoxDecoration(),
          child: Container(
            width: 160.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(8.0),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
                width: 2.0,
              ),
            ),
            child: FlutterFlowCountController(
              decrementIconBuilder: (enabled) => FaIcon(
                FontAwesomeIcons.minus,
                color: enabled
                    ? FlutterFlowTheme.of(context).secondaryText
                    : FlutterFlowTheme.of(context).alternate,
                size: 20.0,
              ),
              incrementIconBuilder: (enabled) => FaIcon(
                FontAwesomeIcons.plus,
                color: enabled
                    ? FlutterFlowTheme.of(context).verdeApp
                    : FlutterFlowTheme.of(context).alternate,
                size: 20.0,
              ),
              countBuilder: (count) => Text(
                count.toString(),
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              count: _model.countControllerValue ??= widget.parameter1!,
              updateCount: (count) async {
                setState(() => _model.countControllerValue = count);
                FFAppState().subtotalPC = FFAppState().subtotalPC +
                    functions
                        .numeroNegativo(containerSelectedItemsRecord.subTotal);
                FFAppState().update(() {});

                await widget.parameter3!.update(createSelectedItemsRecordData(
                  cantidad: _model.countControllerValue,
                  subTotal: functions.subtotalItem(_model.countControllerValue!,
                      containerSelectedItemsRecord.price.toDouble()),
                ));
                FFAppState().subtotalPC = FFAppState().subtotalPC +
                    functions.subtotalItem(_model.countControllerValue!,
                        containerSelectedItemsRecord.price.toDouble());
                FFAppState().update(() {});
              },
              stepSize: 1,
              minimum: 1,
            ),
          ),
        );
      },
    );
  }
}
