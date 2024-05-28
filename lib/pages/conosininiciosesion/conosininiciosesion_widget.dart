import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'conosininiciosesion_model.dart';
export 'conosininiciosesion_model.dart';

class ConosininiciosesionWidget extends StatefulWidget {
  const ConosininiciosesionWidget({super.key});

  @override
  State<ConosininiciosesionWidget> createState() =>
      _ConosininiciosesionWidgetState();
}

class _ConosininiciosesionWidgetState extends State<ConosininiciosesionWidget> {
  late ConosininiciosesionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConosininiciosesionModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (loggedIn) {
        if (valueOrDefault<bool>(currentUserDocument?.isAdmin, false)) {
          context.goNamed('Inicio');
        } else if (valueOrDefault<bool>(
            currentUserDocument?.isVendedor, false)) {
          context.goNamed(
            'StockVendedor',
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
              ),
            },
          );
        } else if (valueOrDefault<bool>(
            currentUserDocument?.isInventario, false)) {
          context.goNamed(
            'productosInventario',
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
              ),
            },
          );
        } else if (valueOrDefault<bool>(
            currentUserDocument?.isDelivery, false)) {
          context.goNamed(
            'pedidosDelivery',
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
              ),
            },
          );
        } else {
          context.goNamed(
            'pantalla',
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
              ),
            },
          );
        }
      } else {
        context.pushNamed('iniciarSesion');
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: const SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
    );
  }
}
