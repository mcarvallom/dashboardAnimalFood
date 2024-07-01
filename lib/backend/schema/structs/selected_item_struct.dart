// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SelectedItemStruct extends FFFirebaseStruct {
  SelectedItemStruct({
    DocumentReference? producto,
    DocumentReference? variacion,
    int? cantidad,
    double? subtotal,
    int? precio,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _producto = producto,
        _variacion = variacion,
        _cantidad = cantidad,
        _subtotal = subtotal,
        _precio = precio,
        super(firestoreUtilData);

  // "producto" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  set producto(DocumentReference? val) => _producto = val;

  bool hasProducto() => _producto != null;

  // "variacion" field.
  DocumentReference? _variacion;
  DocumentReference? get variacion => _variacion;
  set variacion(DocumentReference? val) => _variacion = val;

  bool hasVariacion() => _variacion != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  set cantidad(int? val) => _cantidad = val;

  void incrementCantidad(int amount) => cantidad = cantidad + amount;

  bool hasCantidad() => _cantidad != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  set subtotal(double? val) => _subtotal = val;

  void incrementSubtotal(double amount) => subtotal = subtotal + amount;

  bool hasSubtotal() => _subtotal != null;

  // "precio" field.
  int? _precio;
  int get precio => _precio ?? 0;
  set precio(int? val) => _precio = val;

  void incrementPrecio(int amount) => precio = precio + amount;

  bool hasPrecio() => _precio != null;

  static SelectedItemStruct fromMap(Map<String, dynamic> data) =>
      SelectedItemStruct(
        producto: data['producto'] as DocumentReference?,
        variacion: data['variacion'] as DocumentReference?,
        cantidad: castToType<int>(data['cantidad']),
        subtotal: castToType<double>(data['subtotal']),
        precio: castToType<int>(data['precio']),
      );

  static SelectedItemStruct? maybeFromMap(dynamic data) => data is Map
      ? SelectedItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'producto': _producto,
        'variacion': _variacion,
        'cantidad': _cantidad,
        'subtotal': _subtotal,
        'precio': _precio,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'producto': serializeParam(
          _producto,
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
          ParamType.double,
        ),
        'precio': serializeParam(
          _precio,
          ParamType.int,
        ),
      }.withoutNulls;

  static SelectedItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      SelectedItemStruct(
        producto: deserializeParam(
          data['producto'],
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
          ParamType.double,
          false,
        ),
        precio: deserializeParam(
          data['precio'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SelectedItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelectedItemStruct &&
        producto == other.producto &&
        variacion == other.variacion &&
        cantidad == other.cantidad &&
        subtotal == other.subtotal &&
        precio == other.precio;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([producto, variacion, cantidad, subtotal, precio]);
}

SelectedItemStruct createSelectedItemStruct({
  DocumentReference? producto,
  DocumentReference? variacion,
  int? cantidad,
  double? subtotal,
  int? precio,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SelectedItemStruct(
      producto: producto,
      variacion: variacion,
      cantidad: cantidad,
      subtotal: subtotal,
      precio: precio,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SelectedItemStruct? updateSelectedItemStruct(
  SelectedItemStruct? selectedItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    selectedItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSelectedItemStructData(
  Map<String, dynamic> firestoreData,
  SelectedItemStruct? selectedItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (selectedItem == null) {
    return;
  }
  if (selectedItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && selectedItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final selectedItemData =
      getSelectedItemFirestoreData(selectedItem, forFieldValue);
  final nestedData =
      selectedItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = selectedItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSelectedItemFirestoreData(
  SelectedItemStruct? selectedItem, [
  bool forFieldValue = false,
]) {
  if (selectedItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(selectedItem.toMap());

  // Add any Firestore field values
  selectedItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSelectedItemListFirestoreData(
  List<SelectedItemStruct>? selectedItems,
) =>
    selectedItems?.map((e) => getSelectedItemFirestoreData(e, true)).toList() ??
    [];
