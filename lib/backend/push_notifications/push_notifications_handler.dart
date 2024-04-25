import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.white,
          child: Center(
            child: Image.asset(
              'assets/images/logo_animalfood.png',
              width: MediaQuery.sizeOf(context).width * 0.4,
              fit: BoxFit.cover,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'Inicio': (data) async => ParameterData(
        allParams: {
          'colorInicio': getParameter<Color>(data, 'colorInicio'),
          'nombre': getParameter<String>(data, 'nombre'),
        },
      ),
  'ordenes': (data) async => ParameterData(
        allParams: {
          'colorOrdenes': getParameter<Color>(data, 'colorOrdenes'),
          'nombre': getParameter<String>(data, 'nombre'),
        },
      ),
  'iniciarSesion': ParameterData.none(),
  'conosininiciosesion': ParameterData.none(),
  'productos': (data) async => ParameterData(
        allParams: {
          'colorProductos': getParameter<Color>(data, 'colorProductos'),
          'nombre': getParameter<String>(data, 'nombre'),
        },
      ),
  'Sub-categorias': (data) async => ParameterData(
        allParams: {
          'colorCategorias': getParameter<Color>(data, 'colorCategorias'),
          'nombre': getParameter<String>(data, 'nombre'),
        },
      ),
  'agregarProducto': (data) async => ParameterData(
        allParams: {
          'colorInicio': getParameter<Color>(data, 'colorInicio'),
          'colorOrdenes': getParameter<Color>(data, 'colorOrdenes'),
          'colorProductos': getParameter<Color>(data, 'colorProductos'),
          'colorAnalisis': getParameter<Color>(data, 'colorAnalisis'),
          'colorEmpleados': getParameter<Color>(data, 'colorEmpleados'),
          'colorBanner': getParameter<Color>(data, 'colorBanner'),
          'colorAjustes': getParameter<Color>(data, 'colorAjustes'),
          'colorCategorias': getParameter<Color>(data, 'colorCategorias'),
        },
      ),
  'agregarCategoria': (data) async => ParameterData(
        allParams: {
          'colorInicio': getParameter<Color>(data, 'colorInicio'),
          'colorOrdenes': getParameter<Color>(data, 'colorOrdenes'),
          'colorProductos': getParameter<Color>(data, 'colorProductos'),
          'colorAnalisis': getParameter<Color>(data, 'colorAnalisis'),
          'colorEmpleados': getParameter<Color>(data, 'colorEmpleados'),
          'colorBanner': getParameter<Color>(data, 'colorBanner'),
          'colorAjustes': getParameter<Color>(data, 'colorAjustes'),
          'colorCategorias': getParameter<Color>(data, 'colorCategorias'),
        },
      ),
  'agregarBanner': (data) async => ParameterData(
        allParams: {
          'colorInicio': getParameter<Color>(data, 'colorInicio'),
          'colorOrdenes': getParameter<Color>(data, 'colorOrdenes'),
          'colorProductos': getParameter<Color>(data, 'colorProductos'),
          'colorAnalisis': getParameter<Color>(data, 'colorAnalisis'),
          'colorEmpleados': getParameter<Color>(data, 'colorEmpleados'),
          'colorBanner': getParameter<Color>(data, 'colorBanner'),
          'colorAjustes': getParameter<Color>(data, 'colorAjustes'),
          'colorCategorias': getParameter<Color>(data, 'colorCategorias'),
        },
      ),
  'detalleOrden': (data) async => ParameterData(
        allParams: {
          'detalleOrden': await getDocumentParameter<OrderRecord>(
              data, 'detalleOrden', OrderRecord.fromSnapshot),
        },
      ),
  'empleados': (data) async => ParameterData(
        allParams: {
          'colorEmpleados': getParameter<Color>(data, 'colorEmpleados'),
          'nombre': getParameter<String>(data, 'nombre'),
        },
      ),
  'clientes': (data) async => ParameterData(
        allParams: {
          'colorClientes': getParameter<Color>(data, 'colorClientes'),
          'nombre': getParameter<String>(data, 'nombre'),
        },
      ),
  'agregarBannerMovil': (data) async => ParameterData(
        allParams: {
          'colorInicio': getParameter<Color>(data, 'colorInicio'),
          'colorOrdenes': getParameter<Color>(data, 'colorOrdenes'),
          'colorProductos': getParameter<Color>(data, 'colorProductos'),
          'colorAnalisis': getParameter<Color>(data, 'colorAnalisis'),
          'colorEmpleados': getParameter<Color>(data, 'colorEmpleados'),
          'colorBanner': getParameter<Color>(data, 'colorBanner'),
          'colorAjustes': getParameter<Color>(data, 'colorAjustes'),
          'colorCategorias': getParameter<Color>(data, 'colorCategorias'),
        },
      ),
  'agregarBannerPC': (data) async => ParameterData(
        allParams: {
          'colorInicio': getParameter<Color>(data, 'colorInicio'),
          'colorOrdenes': getParameter<Color>(data, 'colorOrdenes'),
          'colorProductos': getParameter<Color>(data, 'colorProductos'),
          'colorAnalisis': getParameter<Color>(data, 'colorAnalisis'),
          'colorEmpleados': getParameter<Color>(data, 'colorEmpleados'),
          'colorBanner': getParameter<Color>(data, 'colorBanner'),
          'colorAjustes': getParameter<Color>(data, 'colorAjustes'),
          'colorCategorias': getParameter<Color>(data, 'colorCategorias'),
        },
      ),
  'agregarCategoriaPadre': (data) async => ParameterData(
        allParams: {
          'colorInicio': getParameter<Color>(data, 'colorInicio'),
          'colorOrdenes': getParameter<Color>(data, 'colorOrdenes'),
          'colorProductos': getParameter<Color>(data, 'colorProductos'),
          'colorAnalisis': getParameter<Color>(data, 'colorAnalisis'),
          'colorEmpleados': getParameter<Color>(data, 'colorEmpleados'),
          'colorBanner': getParameter<Color>(data, 'colorBanner'),
          'colorAjustes': getParameter<Color>(data, 'colorAjustes'),
          'colorCategorias': getParameter<Color>(data, 'colorCategorias'),
        },
      ),
  'notificacionesAUsuario': ParameterData.none(),
  'agregarMarca': (data) async => ParameterData(
        allParams: {
          'colorInicio': getParameter<Color>(data, 'colorInicio'),
          'colorOrdenes': getParameter<Color>(data, 'colorOrdenes'),
          'colorProductos': getParameter<Color>(data, 'colorProductos'),
          'colorAnalisis': getParameter<Color>(data, 'colorAnalisis'),
          'colorEmpleados': getParameter<Color>(data, 'colorEmpleados'),
          'colorBanner': getParameter<Color>(data, 'colorBanner'),
          'colorAjustes': getParameter<Color>(data, 'colorAjustes'),
          'colorCategorias': getParameter<Color>(data, 'colorCategorias'),
        },
      ),
  'PreguntasFrecuentes': ParameterData.none(),
  'Aplicacion': (data) async => ParameterData(
        allParams: {
          'colorInicio': getParameter<Color>(data, 'colorInicio'),
          'nombre': getParameter<String>(data, 'nombre'),
        },
      ),
  'SitioWeb': (data) async => ParameterData(
        allParams: {
          'colorInicio': getParameter<Color>(data, 'colorInicio'),
          'nombre': getParameter<String>(data, 'nombre'),
        },
      ),
  'ListaProdRecomendados': (data) async => ParameterData(
        allParams: {
          'colorInicio': getParameter<Color>(data, 'colorInicio'),
          'nombre': getParameter<String>(data, 'nombre'),
        },
      ),
  'agregarProdRecomendado': (data) async => ParameterData(
        allParams: {
          'colorInicio': getParameter<Color>(data, 'colorInicio'),
          'nombre': getParameter<String>(data, 'nombre'),
        },
      ),
  'ListaCategorias': (data) async => ParameterData(
        allParams: {
          'colorInicio': getParameter<Color>(data, 'colorInicio'),
          'nombre': getParameter<String>(data, 'nombre'),
        },
      ),
  'EditarCategoria': (data) async => ParameterData(
        allParams: {
          'categoria': getParameter<DocumentReference>(data, 'categoria'),
        },
      ),
  'EditarPortadaPerfil': ParameterData.none(),
  'EditarPagCategoria': ParameterData.none(),
  'evidenciaEntregaFallida': (data) async => ParameterData(
        allParams: {
          'detalleOrden': await getDocumentParameter<OrderRecord>(
              data, 'detalleOrden', OrderRecord.fromSnapshot),
          'usuario': getParameter<DocumentReference>(data, 'usuario'),
        },
      ),
  'Stock': (data) async => ParameterData(
        allParams: {
          'colorProductos': getParameter<Color>(data, 'colorProductos'),
          'nombre': getParameter<String>(data, 'nombre'),
        },
      ),
  'StockVendedor': (data) async => ParameterData(
        allParams: {
          'colorProductos': getParameter<Color>(data, 'colorProductos'),
          'nombre': getParameter<String>(data, 'nombre'),
        },
      ),
  'Reembolso': (data) async => ParameterData(
        allParams: {
          'colorInicio': getParameter<Color>(data, 'colorInicio'),
          'colorOrdenes': getParameter<Color>(data, 'colorOrdenes'),
          'colorProductos': getParameter<Color>(data, 'colorProductos'),
          'colorAnalisis': getParameter<Color>(data, 'colorAnalisis'),
          'colorEmpleados': getParameter<Color>(data, 'colorEmpleados'),
          'colorBanner': getParameter<Color>(data, 'colorBanner'),
          'colorAjustes': getParameter<Color>(data, 'colorAjustes'),
          'colorCategorias': getParameter<Color>(data, 'colorCategorias'),
        },
      ),
  'productosInventario': (data) async => ParameterData(
        allParams: {
          'colorProductos': getParameter<Color>(data, 'colorProductos'),
          'nombre': getParameter<String>(data, 'nombre'),
        },
      ),
  'notificacionesATodos': ParameterData.none(),
  'Categorias': (data) async => ParameterData(
        allParams: {
          'colorCategorias': getParameter<Color>(data, 'colorCategorias'),
          'nombre': getParameter<String>(data, 'nombre'),
        },
      ),
  'tipoCategoria': (data) async => ParameterData(
        allParams: {
          'colorInicio': getParameter<Color>(data, 'colorInicio'),
          'nombre': getParameter<String>(data, 'nombre'),
        },
      ),
  'Marcas': (data) async => ParameterData(
        allParams: {
          'colorInicio': getParameter<Color>(data, 'colorInicio'),
          'colorOrdenes': getParameter<Color>(data, 'colorOrdenes'),
          'colorProductos': getParameter<Color>(data, 'colorProductos'),
          'colorAnalisis': getParameter<Color>(data, 'colorAnalisis'),
          'colorEmpleados': getParameter<Color>(data, 'colorEmpleados'),
          'colorBanner': getParameter<Color>(data, 'colorBanner'),
          'colorAjustes': getParameter<Color>(data, 'colorAjustes'),
          'colorCategorias': getParameter<Color>(data, 'colorCategorias'),
        },
      ),
  'pedidosDelivery': ParameterData.none(),
  'infoPerfil': (data) async => ParameterData(
        allParams: {
          'perfil': getParameter<DocumentReference>(data, 'perfil'),
        },
      ),
  'editarMarca': (data) async => ParameterData(
        allParams: {
          'marca': getParameter<DocumentReference>(data, 'marca'),
        },
      ),
  'marcarEntradaSalida': ParameterData.none(),
  'crearOrden': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
