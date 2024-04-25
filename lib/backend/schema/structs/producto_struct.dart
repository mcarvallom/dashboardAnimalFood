// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductoStruct extends FFFirebaseStruct {
  ProductoStruct({
    DocumentReference? referencia,
    DocumentReference? variacion,
    int? cantidad,
    int? subtotal,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _referencia = referencia,
        _variacion = variacion,
        _cantidad = cantidad,
        _subtotal = subtotal,
        super(firestoreUtilData);

  // "referencia" field.
  DocumentReference? _referencia;
  DocumentReference? get referencia => _referencia;
  set referencia(DocumentReference? val) => _referencia = val;
  bool hasReferencia() => _referencia != null;

  // "variacion" field.
  DocumentReference? _variacion;
  DocumentReference? get variacion => _variacion;
  set variacion(DocumentReference? val) => _variacion = val;
  bool hasVariacion() => _variacion != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  set cantidad(int? val) => _cantidad = val;
  void incrementCantidad(int amount) => _cantidad = cantidad + amount;
  bool hasCantidad() => _cantidad != null;

  // "subtotal" field.
  int? _subtotal;
  int get subtotal => _subtotal ?? 0;
  set subtotal(int? val) => _subtotal = val;
  void incrementSubtotal(int amount) => _subtotal = subtotal + amount;
  bool hasSubtotal() => _subtotal != null;

  static ProductoStruct fromMap(Map<String, dynamic> data) => ProductoStruct(
        referencia: data['referencia'] as DocumentReference?,
        variacion: data['variacion'] as DocumentReference?,
        cantidad: castToType<int>(data['cantidad']),
        subtotal: castToType<int>(data['subtotal']),
      );

  static ProductoStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'referencia': _referencia,
        'variacion': _variacion,
        'cantidad': _cantidad,
        'subtotal': _subtotal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'referencia': serializeParam(
          _referencia,
          ParamType.DocumentReference,
        ),
        'variacion': serializeParam(
          _variacion,
          ParamType.DocumentReference,
        ),
        'cantidad': serializeParam(
          _cantidad,
          ParamType.int,
        ),
        'subtotal': serializeParam(
          _subtotal,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProductoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductoStruct(
        referencia: deserializeParam(
          data['referencia'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['producto'],
        ),
        variacion: deserializeParam(
          data['variacion'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['producto', 'variacion'],
        ),
        cantidad: deserializeParam(
          data['cantidad'],
          ParamType.int,
          false,
        ),
        subtotal: deserializeParam(
          data['subtotal'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProductoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductoStruct &&
        referencia == other.referencia &&
        variacion == other.variacion &&
        cantidad == other.cantidad &&
        subtotal == other.subtotal;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([referencia, variacion, cantidad, subtotal]);
}

ProductoStruct createProductoStruct({
  DocumentReference? referencia,
  DocumentReference? variacion,
  int? cantidad,
  int? subtotal,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductoStruct(
      referencia: referencia,
      variacion: variacion,
      cantidad: cantidad,
      subtotal: subtotal,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductoStruct? updateProductoStruct(
  ProductoStruct? producto, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    producto
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductoStructData(
  Map<String, dynamic> firestoreData,
  ProductoStruct? producto,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (producto == null) {
    return;
  }
  if (producto.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && producto.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productoData = getProductoFirestoreData(producto, forFieldValue);
  final nestedData = productoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = producto.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductoFirestoreData(
  ProductoStruct? producto, [
  bool forFieldValue = false,
]) {
  if (producto == null) {
    return {};
  }
  final firestoreData = mapToFirestore(producto.toMap());

  // Add any Firestore field values
  producto.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductoListFirestoreData(
  List<ProductoStruct>? productos,
) =>
    productos?.map((e) => getProductoFirestoreData(e, true)).toList() ?? [];
