import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start GetNet Group Code

class GetNetGroup {
  static String getBaseUrl() => 'https://checkout.test.getnet.cl';
  static Map<String, String> headers = {};
  static ReembolsoCall reembolsoCall = ReembolsoCall();
}

class ReembolsoCall {
  Future<ApiCallResponse> call({
    String? login = '',
    String? tranKey = '',
    String? nonce = '',
    String? seed = '',
    String? internalReference = '',
  }) async {
    final baseUrl = GetNetGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "auth": {
    "login": "$login",
    "tranKey": "$tranKey",
    "nonce": "$nonce",
    "seed": "$seed"
  },
  "internalReference": "$internalReference"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Reembolso',
      apiUrl: '$baseUrl/api/reverse',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End GetNet Group Code

class EmailsCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? plantilla = '',
    String? titulo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "app_id": "a60882a0-3d89-49bf-a503-33b15024a6c9",
  "email_subject": "$titulo",
  "template_id": "$plantilla",
  "include_email_tokens": [
    "$email"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Emails',
      apiUrl: 'https://onesignal.com/api/v1/notifications',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json;charset=utf-8',
        'Authorization':
            'Basic NTc0MDI3NjUtYmExMy00YjA0LWE4MGItNjYwN2IyODU5NGMw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SimpleFacturaCall {
  static Future<ApiCallResponse> call({
    dynamic productosJson,
  }) async {
    final productos = _serializeJson(productosJson, true);
    final ffApiRequestBody = '''
{
  "credenciales": {
    "rutEmisor": "76269769-6",
    "rutContribuyente": "10422710-4",
    "nombreSucursal": "Casa Matriz"
  },
  "dte": {
    "codigoTipoDte": 52,
    "indicadorMontosNetos": false,
    "formaPago": 1,
    "descuentoGlobal": 0,
    "fechaEmision": "2023-04-10",
    "diasVencimiento": 30,
    "tieneIvaTerceros": false,
    "ivaTerceros": 0,
    "ivaPropio": 0,
    "productos": [
      $productos
    ],
    "tieneReferencias": false,
    "referencias": [
      {
        "codigoTipoDteReferencia": "33",
        "folioReferencia": "1",
        "fechaDteReferenciado": "2022-10-24",
        "razonReferencia": "test1"
      }
    ],
    "rutTransporte": "17432554-5",
    "patente": "ad6546",
    "rutChofer": "17432554-5",
    "nombreChofer": "Alex Roman",
    "tipoTraslado": 1,
    "tipoDespacho": 1
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SimpleFactura',
      apiUrl: 'https://api.simplefactura.cl/invoice',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
