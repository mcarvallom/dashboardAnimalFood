import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "itemCount" field.
  int? _itemCount;
  int get itemCount => _itemCount ?? 0;
  bool hasItemCount() => _itemCount != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "selectorItems" field.
  List<DocumentReference>? _selectorItems;
  List<DocumentReference> get selectorItems => _selectorItems ?? const [];
  bool hasSelectorItems() => _selectorItems != null;

  // "infoProducto" field.
  DocumentReference? _infoProducto;
  DocumentReference? get infoProducto => _infoProducto;
  bool hasInfoProducto() => _infoProducto != null;

  // "productosSeleccionados" field.
  List<DocumentReference>? _productosSeleccionados;
  List<DocumentReference> get productosSeleccionados =>
      _productosSeleccionados ?? const [];
  bool hasProductosSeleccionados() => _productosSeleccionados != null;

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  void _initializeFields() {
    _itemCount = castToType<int>(snapshotData['itemCount']);
    _amount = castToType<double>(snapshotData['amount']);
    _selectorItems = getDataList(snapshotData['selectorItems']);
    _infoProducto = snapshotData['infoProducto'] as DocumentReference?;
    _productosSeleccionados =
        getDataList(snapshotData['productosSeleccionados']);
    _creator = snapshotData['creator'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  int? itemCount,
  double? amount,
  DocumentReference? infoProducto,
  DocumentReference? creator,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'itemCount': itemCount,
      'amount': amount,
      'infoProducto': infoProducto,
      'creator': creator,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    const listEquality = ListEquality();
    return e1?.itemCount == e2?.itemCount &&
        e1?.amount == e2?.amount &&
        listEquality.equals(e1?.selectorItems, e2?.selectorItems) &&
        e1?.infoProducto == e2?.infoProducto &&
        listEquality.equals(
            e1?.productosSeleccionados, e2?.productosSeleccionados) &&
        e1?.creator == e2?.creator;
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash([
        e?.itemCount,
        e?.amount,
        e?.selectorItems,
        e?.infoProducto,
        e?.productosSeleccionados,
        e?.creator
      ]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
