import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
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
      isStreamingApi: false,
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
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BoletaSimpleFacturaCall {
  static Future<ApiCallResponse> call({
    int? tipoDTE,
    String? fchEmis = '',
    String? fchVenc = '',
    int? mntNeto,
    double? iva,
    double? mntTotal,
    dynamic detalleJson,
  }) async {
    final detalle = _serializeJson(detalleJson, true);
    final ffApiRequestBody = '''
{
  "credenciales": {
    "rutEmisor": "77107173-2"
  },
  "Documento": {
    "Encabezado": {
      "IdDoc": {
        "TipoDTE": $tipoDTE,
        "FchEmis": "$fchEmis",
        "FchVenc": "$fchVenc",
        "IndServicio": 3
      },
      "Emisor": {
        "RUTEmisor": "77107173-2",
        "RznSocEmisor": "Comercial PET JJE Limitada",
        "GiroEmisor": "AnimalFood",
        "DirOrigen": "Marga Marga 1672 Lc. 3",
        "CmnaOrigen": "Quilpue"
      },
      "Receptor": {
        "RUTRecep": "66666666-6"
      },
      "Totales": {
        "MntNeto": "$mntNeto",
        "IVA": "$iva",
        "MntTotal": "$mntTotal"
      }
    },
    "Detalle": [
      $detalle
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Boleta SimpleFactura',
      apiUrl: 'https://api.simplefactura.cl/invoiceV2/animalfood',
      callType: ApiCallType.POST,
      headers: {
        'Transfer-Encoding': 'chunked',
        'Content-Type': 'application/json; charset=utf-8',
        'Server': 'Microsoft-IIS/10.0',
        'X-Powered-By': 'ASP.NET',
        'bWFyY29jYXJ2YWxsbzEzMDNAZ21haWwuY29t': 'TWNhcnZhbGxvMTMh',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ObtenerPDFSimpleFacturaCall {
  static Future<ApiCallResponse> call({
    int? folio,
    int? codigoTipoDte,
  }) async {
    final ffApiRequestBody = '''
{
  "credenciales": {
    "rutEmisor": "77107173-2"
  },
  "dteReferenciadoExterno": {
    "folio": $folio,
    "codigoTipoDte": $codigoTipoDte,
    "ambiente": 0
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'obtenerPDFSimpleFactura',
      apiUrl: 'https://api.simplefactura.cl/getPdf',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json; charset=utf-8',
        'Transfer-Encoding': 'chunked',
        'Server': 'Microsoft-IIS/10.0',
        'X-Powered-By': 'ASP.NET',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
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
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
