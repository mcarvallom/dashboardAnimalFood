import '/components/control_stock_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'control_stock_movil_model.dart';
export 'control_stock_movil_model.dart';

class ControlStockMovilWidget extends StatefulWidget {
  const ControlStockMovilWidget({
    Key? key,
    this.stock,
    this.producto,
  }) : super(key: key);

  final int? stock;
  final DocumentReference? producto;

  @override
  _ControlStockMovilWidgetState createState() =>
      _ControlStockMovilWidgetState();
}

class _ControlStockMovilWidgetState extends State<ControlStockMovilWidget> {
  late ControlStockMovilModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ControlStockMovilModel());

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

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Material(
            color: Colors.transparent,
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 0.2,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                child: wrapWithModel(
                  model: _model.controlStockModel,
                  updateCallback: () => setState(() {}),
                  child: ControlStockWidget(
                    parameter1: widget.stock,
                    parameter3: widget.producto,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
