import '/flutter_flow/flutter_flow_util.dart';
import 'ver_imagenes_widget.dart' show VerImagenesWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class VerImagenesModel extends FlutterFlowModel<VerImagenesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
  }

  @override
  void dispose() {}
}
