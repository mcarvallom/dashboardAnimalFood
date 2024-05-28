import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import 'crear_orden_widget.dart' show CrearOrdenWidget;
import 'package:flutter/material.dart';

class CrearOrdenModel extends FlutterFlowModel<CrearOrdenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for topMovil component.
  late TopMovilModel topMovilModel;
  // State field(s) for mediodePAgo widget.
  FocusNode? mediodePAgoFocusNode;
  TextEditingController? mediodePAgoTextController;
  String? Function(BuildContext, String?)? mediodePAgoTextControllerValidator;
  String? _mediodePAgoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Medio de pago requerido';
    }

    return null;
  }

  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for tipoEntrega widget.
  FocusNode? tipoEntregaFocusNode;
  TextEditingController? tipoEntregaTextController;
  String? Function(BuildContext, String?)? tipoEntregaTextControllerValidator;
  String? _tipoEntregaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Tipo de entrega requerido';
    }

    return null;
  }

  // State field(s) for boletaFactura widget.
  FocusNode? boletaFacturaFocusNode;
  TextEditingController? boletaFacturaTextController;
  String? Function(BuildContext, String?)? boletaFacturaTextControllerValidator;
  String? _boletaFacturaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Boleta/Factura requerido';
    }

    return null;
  }

  // State field(s) for diaEntrega widget.
  FocusNode? diaEntregaFocusNode;
  TextEditingController? diaEntregaTextController;
  String? Function(BuildContext, String?)? diaEntregaTextControllerValidator;
  String? _diaEntregaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Día entrega requerido';
    }

    return null;
  }

  // State field(s) for montoTotal widget.
  FocusNode? montoTotalFocusNode;
  TextEditingController? montoTotalTextController;
  String? Function(BuildContext, String?)? montoTotalTextControllerValidator;
  String? _montoTotalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Monto total requerido';
    }

    return null;
  }

  // State field(s) for observacion widget.
  FocusNode? observacionFocusNode;
  TextEditingController? observacionTextController;
  String? Function(BuildContext, String?)? observacionTextControllerValidator;
  String? _observacionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Observación requerido';
    }

    return null;
  }

  // State field(s) for nombreApellido widget.
  FocusNode? nombreApellidoFocusNode;
  TextEditingController? nombreApellidoTextController;
  String? Function(BuildContext, String?)?
      nombreApellidoTextControllerValidator;
  String? _nombreApellidoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre y apellido requerido';
    }

    return null;
  }

  // State field(s) for run widget.
  FocusNode? runFocusNode;
  TextEditingController? runTextController;
  String? Function(BuildContext, String?)? runTextControllerValidator;
  String? _runTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Run requerido';
    }

    return null;
  }

  // State field(s) for dv widget.
  FocusNode? dvFocusNode;
  TextEditingController? dvTextController;
  String? Function(BuildContext, String?)? dvTextControllerValidator;
  String? _dvTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'DV requerido';
    }

    return null;
  }

  // State field(s) for direccion widget.
  FocusNode? direccionFocusNode;
  TextEditingController? direccionTextController;
  String? Function(BuildContext, String?)? direccionTextControllerValidator;
  String? _direccionTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Dirección requerido';
    }

    return null;
  }

  // State field(s) for correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoTextController;
  String? Function(BuildContext, String?)? correoTextControllerValidator;
  String? _correoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Correo requerido';
    }

    return null;
  }

  // State field(s) for numeroTelefono widget.
  FocusNode? numeroTelefonoFocusNode;
  TextEditingController? numeroTelefonoTextController;
  String? Function(BuildContext, String?)?
      numeroTelefonoTextControllerValidator;
  String? _numeroTelefonoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Número de teléfono requerido';
    }

    return null;
  }

  // State field(s) for sector widget.
  FocusNode? sectorFocusNode;
  TextEditingController? sectorTextController;
  String? Function(BuildContext, String?)? sectorTextControllerValidator;
  String? _sectorTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Sector requerido';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrderRecord? orden;

  @override
  void initState(BuildContext context) {
    topMovilModel = createModel(context, () => TopMovilModel());
    mediodePAgoTextControllerValidator = _mediodePAgoTextControllerValidator;
    tipoEntregaTextControllerValidator = _tipoEntregaTextControllerValidator;
    boletaFacturaTextControllerValidator =
        _boletaFacturaTextControllerValidator;
    diaEntregaTextControllerValidator = _diaEntregaTextControllerValidator;
    montoTotalTextControllerValidator = _montoTotalTextControllerValidator;
    observacionTextControllerValidator = _observacionTextControllerValidator;
    nombreApellidoTextControllerValidator =
        _nombreApellidoTextControllerValidator;
    runTextControllerValidator = _runTextControllerValidator;
    dvTextControllerValidator = _dvTextControllerValidator;
    direccionTextControllerValidator = _direccionTextControllerValidator;
    correoTextControllerValidator = _correoTextControllerValidator;
    numeroTelefonoTextControllerValidator =
        _numeroTelefonoTextControllerValidator;
    sectorTextControllerValidator = _sectorTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topMovilModel.dispose();
    mediodePAgoFocusNode?.dispose();
    mediodePAgoTextController?.dispose();

    tipoEntregaFocusNode?.dispose();
    tipoEntregaTextController?.dispose();

    boletaFacturaFocusNode?.dispose();
    boletaFacturaTextController?.dispose();

    diaEntregaFocusNode?.dispose();
    diaEntregaTextController?.dispose();

    montoTotalFocusNode?.dispose();
    montoTotalTextController?.dispose();

    observacionFocusNode?.dispose();
    observacionTextController?.dispose();

    nombreApellidoFocusNode?.dispose();
    nombreApellidoTextController?.dispose();

    runFocusNode?.dispose();
    runTextController?.dispose();

    dvFocusNode?.dispose();
    dvTextController?.dispose();

    direccionFocusNode?.dispose();
    direccionTextController?.dispose();

    correoFocusNode?.dispose();
    correoTextController?.dispose();

    numeroTelefonoFocusNode?.dispose();
    numeroTelefonoTextController?.dispose();

    sectorFocusNode?.dispose();
    sectorTextController?.dispose();
  }
}
