import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'agregar_variacion_widget.dart' show AgregarVariacionWidget;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgregarVariacionModel extends FlutterFlowModel<AgregarVariacionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtName widget.
  FocusNode? txtNameFocusNode;
  TextEditingController? txtNameTextController;
  String? Function(BuildContext, String?)? txtNameTextControllerValidator;
  // State field(s) for txtStock widget.
  FocusNode? txtStockFocusNode;
  TextEditingController? txtStockTextController;
  String? Function(BuildContext, String?)? txtStockTextControllerValidator;
  // State field(s) for txtPrecio widget.
  FocusNode? txtPrecioFocusNode;
  TextEditingController? txtPrecioTextController;
  String? Function(BuildContext, String?)? txtPrecioTextControllerValidator;
  // State field(s) for txtRebaja widget.
  FocusNode? txtRebajaFocusNode;
  TextEditingController? txtRebajaTextController;
  String? Function(BuildContext, String?)? txtRebajaTextControllerValidator;
  // State field(s) for txtCodigoBarra widget.
  FocusNode? txtCodigoBarraFocusNode;
  TextEditingController? txtCodigoBarraTextController;
  String? Function(BuildContext, String?)?
      txtCodigoBarraTextControllerValidator;
  var escanearProducto = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNameFocusNode?.dispose();
    txtNameTextController?.dispose();

    txtStockFocusNode?.dispose();
    txtStockTextController?.dispose();

    txtPrecioFocusNode?.dispose();
    txtPrecioTextController?.dispose();

    txtRebajaFocusNode?.dispose();
    txtRebajaTextController?.dispose();

    txtCodigoBarraFocusNode?.dispose();
    txtCodigoBarraTextController?.dispose();
  }
}
