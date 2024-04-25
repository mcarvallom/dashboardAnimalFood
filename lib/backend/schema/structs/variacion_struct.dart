// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VariacionStruct extends FFFirebaseStruct {
  VariacionStruct({
    String? tamanio,
    int? stock,
    String? codigoBarra,
    int? precio,
    int? rebaja,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tamanio = tamanio,
        _stock = stock,
        _codigoBarra = codigoBarra,
        _precio = precio,
        _rebaja = rebaja,
        super(firestoreUtilData);

  // "tamanio" field.
  String? _tamanio;
  String get tamanio => _tamanio ?? '';
  set tamanio(String? val) => _tamanio = val;
  bool hasTamanio() => _tamanio != null;

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  set stock(int? val) => _stock = val;
  void incrementStock(int amount) => _stock = stock + amount;
  bool hasStock() => _stock != null;

  // "codigoBarra" field.
  String? _codigoBarra;
  String get codigoBarra => _codigoBarra ?? '';
  set codigoBarra(String? val) => _codigoBarra = val;
  bool hasCodigoBarra() => _codigoBarra != null;

  // "precio" field.
  int? _precio;
  int get precio => _precio ?? 0;
  set precio(int? val) => _precio = val;
  void incrementPrecio(int amount) => _precio = precio + amount;
  bool hasPrecio() => _precio != null;

  // "rebaja" field.
  int? _rebaja;
  int get rebaja => _rebaja ?? 0;
  set rebaja(int? val) => _rebaja = val;
  void incrementRebaja(int amount) => _rebaja = rebaja + amount;
  bool hasRebaja() => _rebaja != null;

  static VariacionStruct fromMap(Map<String, dynamic> data) => VariacionStruct(
        tamanio: data['tamanio'] as String?,
        stock: castToType<int>(data['stock']),
        codigoBarra: data['codigoBarra'] as String?,
        precio: castToType<int>(data['precio']),
        rebaja: castToType<int>(data['rebaja']),
      );

  static VariacionStruct? maybeFromMap(dynamic data) => data is Map
      ? VariacionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'tamanio': _tamanio,
        'stock': _stock,
        'codigoBarra': _codigoBarra,
        'precio': _precio,
        'rebaja': _rebaja,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tamanio': serializeParam(
          _tamanio,
          ParamType.String,
        ),
        'stock': serializeParam(
          _stock,
          ParamType.int,
        ),
        'codigoBarra': serializeParam(
          _codigoBarra,
          ParamType.String,
        ),
        'precio': serializeParam(
          _precio,
          ParamType.int,
        ),
        'rebaja': serializeParam(
          _rebaja,
          ParamType.int,
        ),
      }.withoutNulls;

  static VariacionStruct fromSerializableMap(Map<String, dynamic> data) =>
      VariacionStruct(
        tamanio: deserializeParam(
          data['tamanio'],
          ParamType.String,
          false,
        ),
        stock: deserializeParam(
          data['stock'],
          ParamType.int,
          false,
        ),
        codigoBarra: deserializeParam(
          data['codigoBarra'],
          ParamType.String,
          false,
        ),
        precio: deserializeParam(
          data['precio'],
          ParamType.int,
          false,
        ),
        rebaja: deserializeParam(
          data['rebaja'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'VariacionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VariacionStruct &&
        tamanio == other.tamanio &&
        stock == other.stock &&
        codigoBarra == other.codigoBarra &&
        precio == other.precio &&
        rebaja == other.rebaja;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([tamanio, stock, codigoBarra, precio, rebaja]);
}

VariacionStruct createVariacionStruct({
  String? tamanio,
  int? stock,
  String? codigoBarra,
  int? precio,
  int? rebaja,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VariacionStruct(
      tamanio: tamanio,
      stock: stock,
      codigoBarra: codigoBarra,
      precio: precio,
      rebaja: rebaja,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VariacionStruct? updateVariacionStruct(
  VariacionStruct? variacion, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    variacion
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVariacionStructData(
  Map<String, dynamic> firestoreData,
  VariacionStruct? variacion,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (variacion == null) {
    return;
  }
  if (variacion.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && variacion.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final variacionData = getVariacionFirestoreData(variacion, forFieldValue);
  final nestedData = variacionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = variacion.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVariacionFirestoreData(
  VariacionStruct? variacion, [
  bool forFieldValue = false,
]) {
  if (variacion == null) {
    return {};
  }
  final firestoreData = mapToFirestore(variacion.toMap());

  // Add any Firestore field values
  variacion.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVariacionListFirestoreData(
  List<VariacionStruct>? variacions,
) =>
    variacions?.map((e) => getVariacionFirestoreData(e, true)).toList() ?? [];
