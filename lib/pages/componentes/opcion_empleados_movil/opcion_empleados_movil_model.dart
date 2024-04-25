import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/componentes/switch_admin/switch_admin_widget.dart';
import '/pages/componentes/switch_delivery/switch_delivery_widget.dart';
import '/pages/componentes/switch_empleado/switch_empleado_widget.dart';
import 'opcion_empleados_movil_widget.dart' show OpcionEmpleadosMovilWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OpcionEmpleadosMovilModel
    extends FlutterFlowModel<OpcionEmpleadosMovilWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for switchAdmin component.
  late SwitchAdminModel switchAdminModel;
  // Model for switchEmpleado component.
  late SwitchEmpleadoModel switchEmpleadoModel;
  // Model for switchDelivery component.
  late SwitchDeliveryModel switchDeliveryModel;

  @override
  void initState(BuildContext context) {
    switchAdminModel = createModel(context, () => SwitchAdminModel());
    switchEmpleadoModel = createModel(context, () => SwitchEmpleadoModel());
    switchDeliveryModel = createModel(context, () => SwitchDeliveryModel());
  }

  @override
  void dispose() {
    switchAdminModel.dispose();
    switchEmpleadoModel.dispose();
    switchDeliveryModel.dispose();
  }
}
