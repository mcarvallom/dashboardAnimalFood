import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/menu_escritorio/menu_escritorio_widget.dart';
import '/pages/componentes/top_escritorio/top_escritorio_widget.dart';
import 'agregar_banner_p_c_widget.dart' show AgregarBannerPCWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AgregarBannerPCModel extends FlutterFlowModel<AgregarBannerPCWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menuEscritorio component.
  late MenuEscritorioModel menuEscritorioModel;
  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    menuEscritorioModel = createModel(context, () => MenuEscritorioModel());
    topEscritorioModel = createModel(context, () => TopEscritorioModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuEscritorioModel.dispose();
    topEscritorioModel.dispose();
  }
}
