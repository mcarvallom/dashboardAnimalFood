import 'dart:convert';
import 'dart:typed_data';

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
    );
  }
}

/// End GetNet Group Code

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
