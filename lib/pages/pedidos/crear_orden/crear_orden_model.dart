import '/backend/backend.dart';
import '/components/barra_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import 'crear_orden_widget.dart' show CrearOrdenWidget;
import 'package:flutter/material.dart';

class CrearOrdenModel extends FlutterFlowModel<CrearOrdenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for barraMenu component.
  late BarraMenuModel barraMenuModel;
  // Model for topMovil component.
  late TopMovilModel topMovilModel;
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textController1Validator;
  List<UsuarioRecord> simpleSearchResults = [];
  // State field(s) for mediodePAgo widget.
  FocusNode? mediodePAgoFocusNode;
  TextEditingController? mediodePAgoTextController;
  String? Function(BuildContext, String?)? mediodePAgoTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for tipoEntrega widget.
  FocusNode? tipoEntregaFocusNode;
  TextEditingController? tipoEntregaTextController;
  String? Function(BuildContext, String?)? tipoEntregaTextControllerValidator;
  // State field(s) for boletaFactura widget.
  FocusNode? boletaFacturaFocusNode;
  TextEditingController? boletaFacturaTextController;
  String? Function(BuildContext, String?)? boletaFacturaTextControllerValidator;
  // State field(s) for diaEntrega widget.
  FocusNode? diaEntregaFocusNode;
  TextEditingController? diaEntregaTextController;
  String? Function(BuildContext, String?)? diaEntregaTextControllerValidator;
  // State field(s) for montoTotal widget.
  FocusNode? montoTotalFocusNode;
  TextEditingController? montoTotalTextController;
  String? Function(BuildContext, String?)? montoTotalTextControllerValidator;
  // State field(s) for observacion widget.
  FocusNode? observacionFocusNode;
  TextEditingController? observacionTextController;
  String? Function(BuildContext, String?)? observacionTextControllerValidator;
  // State field(s) for nombreApellido widget.
  FocusNode? nombreApellidoFocusNode;
  TextEditingController? nombreApellidoTextController;
  String? Function(BuildContext, String?)?
      nombreApellidoTextControllerValidator;
  // State field(s) for run widget.
  FocusNode? runFocusNode;
  TextEditingController? runTextController;
  String? Function(BuildContext, String?)? runTextControllerValidator;
  // State field(s) for dv widget.
  FocusNode? dvFocusNode;
  TextEditingController? dvTextController;
  String? Function(BuildContext, String?)? dvTextControllerValidator;
  // State field(s) for direccion widget.
  FocusNode? direccionFocusNode;
  TextEditingController? direccionTextController;
  String? Function(BuildContext, String?)? direccionTextControllerValidator;
  // State field(s) for correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoTextController;
  String? Function(BuildContext, String?)? correoTextControllerValidator;
  // State field(s) for numeroTelefono widget.
  FocusNode? numeroTelefonoFocusNode;
  TextEditingController? numeroTelefonoTextController;
  String? Function(BuildContext, String?)?
      numeroTelefonoTextControllerValidator;
  // State field(s) for sector widget.
  FocusNode? sectorFocusNode;
  TextEditingController? sectorTextController;
  String? Function(BuildContext, String?)? sectorTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UserRecord? userAnimalFood;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrderRecord? orden;

  @override
  void initState(BuildContext context) {
    barraMenuModel = createModel(context, () => BarraMenuModel());
    topMovilModel = createModel(context, () => TopMovilModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    barraMenuModel.dispose();
    topMovilModel.dispose();
    textFieldFocusNode?.dispose();

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
