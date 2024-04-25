import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start GetNet Group Code

class GetNetGroup {
  static String baseUrl = 'https://checkout.test.getnet.cl';
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
    final ffApiRequestBody = '''
{
  "auth": {
    "login": "${login}",
    "tranKey": "${tranKey}",
    "nonce": "${nonce}",
    "seed": "${seed}"
  },
  "internalReference": "${internalReference}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Reembolso',
      apiUrl: '${GetNetGroup.baseUrl}/api/reverse',
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
  "email_subject": "${titulo}",
  "template_id": "${plantilla}",
  "include_email_tokens": [
    "${email}"
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
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
