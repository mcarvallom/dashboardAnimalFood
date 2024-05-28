import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? const ConosininiciosesionWidget()
          : const PantallaWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const ConosininiciosesionWidget()
              : const PantallaWidget(),
        ),
        FFRoute(
          name: 'Inicio',
          path: '/inicio',
          requireAuth: true,
          builder: (context, params) => InicioWidget(
            colorInicio: params.getParam(
              'colorInicio',
              ParamType.Color,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ordenes',
          path: '/ordenes',
          builder: (context, params) => OrdenesWidget(
            colorOrdenes: params.getParam(
              'colorOrdenes',
              ParamType.Color,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'iniciarSesion',
          path: '/iniciarSesion',
          builder: (context, params) => const IniciarSesionWidget(),
        ),
        FFRoute(
          name: 'conosininiciosesion',
          path: '/conosininiciosesion',
          builder: (context, params) => const ConosininiciosesionWidget(),
        ),
        FFRoute(
          name: 'productos',
          path: '/productos',
          builder: (context, params) => ProductosWidget(
            colorProductos: params.getParam(
              'colorProductos',
              ParamType.Color,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Sub-categorias',
          path: '/subCategorias',
          builder: (context, params) => SubCategoriasWidget(
            colorCategorias: params.getParam(
              'colorCategorias',
              ParamType.Color,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'agregarProducto',
          path: '/agregarProducto',
          builder: (context, params) => AgregarProductoWidget(
            colorInicio: params.getParam(
              'colorInicio',
              ParamType.Color,
            ),
            colorOrdenes: params.getParam(
              'colorOrdenes',
              ParamType.Color,
            ),
            colorProductos: params.getParam(
              'colorProductos',
              ParamType.Color,
            ),
            colorAnalisis: params.getParam(
              'colorAnalisis',
              ParamType.Color,
            ),
            colorEmpleados: params.getParam(
              'colorEmpleados',
              ParamType.Color,
            ),
            colorBanner: params.getParam(
              'colorBanner',
              ParamType.Color,
            ),
            colorAjustes: params.getParam(
              'colorAjustes',
              ParamType.Color,
            ),
            colorCategorias: params.getParam(
              'colorCategorias',
              ParamType.Color,
            ),
          ),
        ),
        FFRoute(
          name: 'agregarCategoria',
          path: '/agregarCategoria',
          builder: (context, params) => AgregarCategoriaWidget(
            colorInicio: params.getParam(
              'colorInicio',
              ParamType.Color,
            ),
            colorOrdenes: params.getParam(
              'colorOrdenes',
              ParamType.Color,
            ),
            colorProductos: params.getParam(
              'colorProductos',
              ParamType.Color,
            ),
            colorAnalisis: params.getParam(
              'colorAnalisis',
              ParamType.Color,
            ),
            colorEmpleados: params.getParam(
              'colorEmpleados',
              ParamType.Color,
            ),
            colorBanner: params.getParam(
              'colorBanner',
              ParamType.Color,
            ),
            colorAjustes: params.getParam(
              'colorAjustes',
              ParamType.Color,
            ),
            colorCategorias: params.getParam(
              'colorCategorias',
              ParamType.Color,
            ),
          ),
        ),
        FFRoute(
          name: 'agregarBanner',
          path: '/agregarBanner',
          builder: (context, params) => AgregarBannerWidget(
            colorInicio: params.getParam(
              'colorInicio',
              ParamType.Color,
            ),
            colorOrdenes: params.getParam(
              'colorOrdenes',
              ParamType.Color,
            ),
            colorProductos: params.getParam(
              'colorProductos',
              ParamType.Color,
            ),
            colorAnalisis: params.getParam(
              'colorAnalisis',
              ParamType.Color,
            ),
            colorEmpleados: params.getParam(
              'colorEmpleados',
              ParamType.Color,
            ),
            colorBanner: params.getParam(
              'colorBanner',
              ParamType.Color,
            ),
            colorAjustes: params.getParam(
              'colorAjustes',
              ParamType.Color,
            ),
            colorCategorias: params.getParam(
              'colorCategorias',
              ParamType.Color,
            ),
          ),
        ),
        FFRoute(
          name: 'detalleOrden',
          path: '/detalleOrden',
          asyncParams: {
            'detalleOrden': getDoc(['order'], OrderRecord.fromSnapshot),
          },
          builder: (context, params) => DetalleOrdenWidget(
            detalleOrden: params.getParam(
              'detalleOrden',
              ParamType.Document,
            ),
            listaProducto: params.getParam<DocumentReference>(
              'listaProducto',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['selectedItems'],
            ),
          ),
        ),
        FFRoute(
          name: 'empleados',
          path: '/empleados',
          builder: (context, params) => EmpleadosWidget(
            colorEmpleados: params.getParam(
              'colorEmpleados',
              ParamType.Color,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'clientes',
          path: '/clientes',
          builder: (context, params) => ClientesWidget(
            colorClientes: params.getParam(
              'colorClientes',
              ParamType.Color,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'agregarBannerMovil',
          path: '/agregarBannerMovil',
          builder: (context, params) => AgregarBannerMovilWidget(
            colorInicio: params.getParam(
              'colorInicio',
              ParamType.Color,
            ),
            colorOrdenes: params.getParam(
              'colorOrdenes',
              ParamType.Color,
            ),
            colorProductos: params.getParam(
              'colorProductos',
              ParamType.Color,
            ),
            colorAnalisis: params.getParam(
              'colorAnalisis',
              ParamType.Color,
            ),
            colorEmpleados: params.getParam(
              'colorEmpleados',
              ParamType.Color,
            ),
            colorBanner: params.getParam(
              'colorBanner',
              ParamType.Color,
            ),
            colorAjustes: params.getParam(
              'colorAjustes',
              ParamType.Color,
            ),
            colorCategorias: params.getParam(
              'colorCategorias',
              ParamType.Color,
            ),
          ),
        ),
        FFRoute(
          name: 'agregarBannerPC',
          path: '/agregarBannerPC',
          builder: (context, params) => AgregarBannerPCWidget(
            colorInicio: params.getParam(
              'colorInicio',
              ParamType.Color,
            ),
            colorOrdenes: params.getParam(
              'colorOrdenes',
              ParamType.Color,
            ),
            colorProductos: params.getParam(
              'colorProductos',
              ParamType.Color,
            ),
            colorAnalisis: params.getParam(
              'colorAnalisis',
              ParamType.Color,
            ),
            colorEmpleados: params.getParam(
              'colorEmpleados',
              ParamType.Color,
            ),
            colorBanner: params.getParam(
              'colorBanner',
              ParamType.Color,
            ),
            colorAjustes: params.getParam(
              'colorAjustes',
              ParamType.Color,
            ),
            colorCategorias: params.getParam(
              'colorCategorias',
              ParamType.Color,
            ),
          ),
        ),
        FFRoute(
          name: 'agregarCategoriaPadre',
          path: '/agregarCategoriaPadre',
          builder: (context, params) => AgregarCategoriaPadreWidget(
            colorInicio: params.getParam(
              'colorInicio',
              ParamType.Color,
            ),
            colorOrdenes: params.getParam(
              'colorOrdenes',
              ParamType.Color,
            ),
            colorProductos: params.getParam(
              'colorProductos',
              ParamType.Color,
            ),
            colorAnalisis: params.getParam(
              'colorAnalisis',
              ParamType.Color,
            ),
            colorEmpleados: params.getParam(
              'colorEmpleados',
              ParamType.Color,
            ),
            colorBanner: params.getParam(
              'colorBanner',
              ParamType.Color,
            ),
            colorAjustes: params.getParam(
              'colorAjustes',
              ParamType.Color,
            ),
            colorCategorias: params.getParam(
              'colorCategorias',
              ParamType.Color,
            ),
          ),
        ),
        FFRoute(
          name: 'notificacionesAUsuario',
          path: '/notificacionesAUsuario',
          builder: (context, params) => const NotificacionesAUsuarioWidget(),
        ),
        FFRoute(
          name: 'agregarMarca',
          path: '/agregarMarca',
          builder: (context, params) => AgregarMarcaWidget(
            colorInicio: params.getParam(
              'colorInicio',
              ParamType.Color,
            ),
            colorOrdenes: params.getParam(
              'colorOrdenes',
              ParamType.Color,
            ),
            colorProductos: params.getParam(
              'colorProductos',
              ParamType.Color,
            ),
            colorAnalisis: params.getParam(
              'colorAnalisis',
              ParamType.Color,
            ),
            colorEmpleados: params.getParam(
              'colorEmpleados',
              ParamType.Color,
            ),
            colorBanner: params.getParam(
              'colorBanner',
              ParamType.Color,
            ),
            colorAjustes: params.getParam(
              'colorAjustes',
              ParamType.Color,
            ),
            colorCategorias: params.getParam(
              'colorCategorias',
              ParamType.Color,
            ),
          ),
        ),
        FFRoute(
          name: 'PreguntasFrecuentes',
          path: '/preguntasFrecuentes',
          builder: (context, params) => const PreguntasFrecuentesWidget(),
        ),
        FFRoute(
          name: 'Aplicacion',
          path: '/aplicacion',
          builder: (context, params) => AplicacionWidget(
            colorInicio: params.getParam(
              'colorInicio',
              ParamType.Color,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'SitioWeb',
          path: '/sitioWeb',
          builder: (context, params) => SitioWebWidget(
            colorInicio: params.getParam(
              'colorInicio',
              ParamType.Color,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ListaProdRecomendados',
          path: '/listaProdRecomendados',
          builder: (context, params) => ListaProdRecomendadosWidget(
            colorInicio: params.getParam(
              'colorInicio',
              ParamType.Color,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'agregarProdRecomendado',
          path: '/agregarProdRecomendado',
          builder: (context, params) => AgregarProdRecomendadoWidget(
            colorInicio: params.getParam(
              'colorInicio',
              ParamType.Color,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ListaCategorias',
          path: '/listaCategorias',
          builder: (context, params) => ListaCategoriasWidget(
            colorInicio: params.getParam(
              'colorInicio',
              ParamType.Color,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'EditarCategoria',
          path: '/editarCategoria',
          builder: (context, params) => EditarCategoriaWidget(
            categoria: params.getParam(
              'categoria',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['categoriaPadre'],
            ),
          ),
        ),
        FFRoute(
          name: 'EditarPortadaPerfil',
          path: '/editarPortadaPerfil',
          builder: (context, params) => const EditarPortadaPerfilWidget(),
        ),
        FFRoute(
          name: 'EditarPagCategoria',
          path: '/editarPagCategoria',
          builder: (context, params) => const EditarPagCategoriaWidget(),
        ),
        FFRoute(
          name: 'evidenciaEntregaFallida',
          path: '/evidenciaEntregaFallida',
          asyncParams: {
            'detalleOrden': getDoc(['order'], OrderRecord.fromSnapshot),
          },
          builder: (context, params) => EvidenciaEntregaFallidaWidget(
            detalleOrden: params.getParam(
              'detalleOrden',
              ParamType.Document,
            ),
            usuario: params.getParam(
              'usuario',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['user'],
            ),
          ),
        ),
        FFRoute(
          name: 'Stock',
          path: '/stock',
          builder: (context, params) => StockWidget(
            colorProductos: params.getParam(
              'colorProductos',
              ParamType.Color,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'StockVendedor',
          path: '/stockVendedor',
          builder: (context, params) => StockVendedorWidget(
            colorProductos: params.getParam(
              'colorProductos',
              ParamType.Color,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Reembolso',
          path: '/reembolso',
          builder: (context, params) => ReembolsoWidget(
            colorInicio: params.getParam(
              'colorInicio',
              ParamType.Color,
            ),
            colorOrdenes: params.getParam(
              'colorOrdenes',
              ParamType.Color,
            ),
            colorProductos: params.getParam(
              'colorProductos',
              ParamType.Color,
            ),
            colorAnalisis: params.getParam(
              'colorAnalisis',
              ParamType.Color,
            ),
            colorEmpleados: params.getParam(
              'colorEmpleados',
              ParamType.Color,
            ),
            colorBanner: params.getParam(
              'colorBanner',
              ParamType.Color,
            ),
            colorAjustes: params.getParam(
              'colorAjustes',
              ParamType.Color,
            ),
            colorCategorias: params.getParam(
              'colorCategorias',
              ParamType.Color,
            ),
          ),
        ),
        FFRoute(
          name: 'productosInventario',
          path: '/productosInventario',
          builder: (context, params) => ProductosInventarioWidget(
            colorProductos: params.getParam(
              'colorProductos',
              ParamType.Color,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'notificacionesATodos',
          path: '/notificacionesATodos',
          builder: (context, params) => const NotificacionesATodosWidget(),
        ),
        FFRoute(
          name: 'Categorias',
          path: '/categorias',
          builder: (context, params) => CategoriasWidget(
            colorCategorias: params.getParam(
              'colorCategorias',
              ParamType.Color,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'tipoCategoria',
          path: '/tipoCategoria',
          builder: (context, params) => TipoCategoriaWidget(
            colorInicio: params.getParam(
              'colorInicio',
              ParamType.Color,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Marcas',
          path: '/marcas',
          builder: (context, params) => MarcasWidget(
            colorInicio: params.getParam(
              'colorInicio',
              ParamType.Color,
            ),
            colorOrdenes: params.getParam(
              'colorOrdenes',
              ParamType.Color,
            ),
            colorProductos: params.getParam(
              'colorProductos',
              ParamType.Color,
            ),
            colorAnalisis: params.getParam(
              'colorAnalisis',
              ParamType.Color,
            ),
            colorEmpleados: params.getParam(
              'colorEmpleados',
              ParamType.Color,
            ),
            colorBanner: params.getParam(
              'colorBanner',
              ParamType.Color,
            ),
            colorAjustes: params.getParam(
              'colorAjustes',
              ParamType.Color,
            ),
            colorCategorias: params.getParam(
              'colorCategorias',
              ParamType.Color,
            ),
          ),
        ),
        FFRoute(
          name: 'pedidosDelivery',
          path: '/pedidosDelivery',
          builder: (context, params) => const PedidosDeliveryWidget(),
        ),
        FFRoute(
          name: 'infoPerfil',
          path: '/infoPerfil',
          builder: (context, params) => InfoPerfilWidget(
            perfil: params.getParam(
              'perfil',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['user'],
            ),
          ),
        ),
        FFRoute(
          name: 'editarMarca',
          path: '/editarMarca',
          builder: (context, params) => EditarMarcaWidget(
            marca: params.getParam(
              'marca',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['marca'],
            ),
          ),
        ),
        FFRoute(
          name: 'marcarEntradaSalida',
          path: '/marcarEntradaSalida',
          builder: (context, params) => const MarcarEntradaSalidaWidget(),
        ),
        FFRoute(
          name: 'crearOrden',
          path: '/crearOrden',
          builder: (context, params) => const CrearOrdenWidget(),
        ),
        FFRoute(
          name: 'Blog',
          path: '/blog',
          builder: (context, params) => const BlogWidget(),
        ),
        FFRoute(
          name: 'crearBlog',
          path: '/crearBlog',
          builder: (context, params) => const CrearBlogWidget(),
        ),
        FFRoute(
          name: 'Soporte',
          path: '/soporte',
          requireAuth: true,
          builder: (context, params) => const SoporteWidget(),
        ),
        FFRoute(
          name: 'pantalla',
          path: '/pantalla',
          builder: (context, params) => const PantallaWidget(),
        ),
        FFRoute(
          name: 'listaDeMensajes',
          path: '/listaDeMensajes',
          builder: (context, params) => const ListaDeMensajesWidget(),
        ),
        FFRoute(
          name: 'VerTicket',
          path: '/verTicket',
          builder: (context, params) => VerTicketWidget(
            soporte: params.getParam(
              'soporte',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['soporte'],
            ),
          ),
        ),
        FFRoute(
          name: 'misTickets',
          path: '/misTickets',
          builder: (context, params) => const MisTicketsWidget(),
        ),
        FFRoute(
          name: 'VerMiTicket',
          path: '/verMiTicket',
          builder: (context, params) => VerMiTicketWidget(
            soporte: params.getParam(
              'soporte',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['soporte'],
            ),
          ),
        ),
        FFRoute(
          name: 'registrarVentas',
          path: '/registrarVentas',
          builder: (context, params) => const RegistrarVentasWidget(),
        ),
        FFRoute(
          name: 'ventasDiarias',
          path: '/ventasDiarias',
          builder: (context, params) => const VentasDiariasWidget(),
        ),
        FFRoute(
          name: 'detalleReporteVenta',
          path: '/detalleReporteVenta',
          builder: (context, params) => DetalleReporteVentaWidget(
            detalleVenta: params.getParam(
              'detalleVenta',
              ParamType.DataStruct,
              isList: false,
              structBuilder: VentasDiariasFechaStruct.fromSerializableMap,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/pantalla';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Image.asset(
                      'assets/images/inicioApp.gif',
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
