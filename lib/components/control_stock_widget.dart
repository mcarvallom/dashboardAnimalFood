import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'control_stock_model.dart';
export 'control_stock_model.dart';

class ControlStockWidget extends StatefulWidget {
  const ControlStockWidget({
    Key? key,
    this.parameter1,
    this.parameter3,
  }) : super(key: key);

  final int? parameter1;
  final DocumentReference? parameter3;

  @override
  _ControlStockWidgetState createState() => _ControlStockWidgetState();
}

class _ControlStockWidgetState extends State<ControlStockWidget> {
  late ControlStockModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ControlStockModel());

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

    return Align(
      alignment: AlignmentDirectional(0.00, 0.00),
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
                ? FlutterFlowTheme.of(context).error
                : FlutterFlowTheme.of(context).alternate,
            size: 20.0,
          ),
          incrementIconBuilder: (enabled) => FaIcon(
            FontAwesomeIcons.plus,
            color: enabled
                ? Color(0xFFFF8159)
                : FlutterFlowTheme.of(context).alternate,
            size: 20.0,
          ),
          countBuilder: (count) => Text(
            count.toString(),
            style: FlutterFlowTheme.of(context).titleLarge,
          ),
          count: _model.countControllerValue ??= widget.parameter1!,
          updateCount: (count) async {
            setState(() => _model.countControllerValue = count);
            await widget.parameter3!.update(createProductoRecordData(
              stock: _model.countControllerValue,
            ));
          },
          stepSize: 1,
        ),
      ),
    );
  }
}
