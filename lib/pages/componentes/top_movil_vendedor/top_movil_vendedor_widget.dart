import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/perfil_setting/perfil_setting_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'top_movil_vendedor_model.dart';
export 'top_movil_vendedor_model.dart';

class TopMovilVendedorWidget extends StatefulWidget {
  const TopMovilVendedorWidget({super.key});

  @override
  State<TopMovilVendedorWidget> createState() => _TopMovilVendedorWidgetState();
}

class _TopMovilVendedorWidgetState extends State<TopMovilVendedorWidget> {
  late TopMovilVendedorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopMovilVendedorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).verdeApp,
              borderRadius: 10.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: const Color(0x6700AC67),
              icon: const FaIcon(
                FontAwesomeIcons.store,
                color: Color(0xFF005A36),
                size: 20.0,
              ),
              onPressed: () async {
                context.goNamed(
                  'ordenes',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                    ),
                  },
                );
              },
            ),
            FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).verdeApp,
              borderRadius: 10.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: const Color(0x6700AC67),
              icon: const Icon(
                Icons.inventory_sharp,
                color: Color(0xFF005A36),
                size: 20.0,
              ),
              onPressed: () async {
                context.goNamed(
                  'StockVendedor',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                    ),
                  },
                );
              },
            ),
            Text(
              'Panel Administración',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      useSafeArea: true,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: const PerfilSettingWidget(),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => Container(
                            width: 50.0,
                            height: 50.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              valueOrDefault<String>(
                                currentUserPhoto,
                                'https://images.unsplash.com/photo-1537151625747-768eb6cf92b2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw4fHxkb2d8ZW58MHx8fHwxNjk5ODEzNTQxfDA&ixlib=rb-4.0.3&q=80&w=1080',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
