import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedItemsRecord extends FirestoreRecord {
  SelectedItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "cart" field.
  DocumentReference? _cart;
  DocumentReference? get cart => _cart;
  bool hasCart() => _cart != null;

  // "producto" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  bool hasProducto() => _producto != null;

  // "ordenAsociada" field.
  DocumentReference? _ordenAsociada;
  DocumentReference? get ordenAsociada => _ordenAsociada;
  bool hasOrdenAsociada() => _ordenAsociada != null;

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  // "variacion" field.
  DocumentReference? _variacion;
  DocumentReference? get variacion => _variacion;
  bool hasVariacion() => _variacion != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _subTotal = castToType<double>(snapshotData['subTotal']);
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _price = castToType<int>(snapshotData['price']);
    _cart = snapshotData['cart'] as DocumentReference?;
    _producto = snapshotData['producto'] as DocumentReference?;
    _ordenAsociada = snapshotData['ordenAsociada'] as DocumentReference?;
    _creator = snapshotData['creator'] as DocumentReference?;
    _variacion = snapshotData['variacion'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('selectedItems');

  static Stream<SelectedItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SelectedItemsRecord.fromSnapshot(s));

  static Future<SelectedItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SelectedItemsRecord.fromSnapshot(s));

  static SelectedItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SelectedItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SelectedItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SelectedItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SelectedItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SelectedItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSelectedItemsRecordData({
  String? name,
  String? description,
  String? image,
  double? subTotal,
  int? cantidad,
  int? price,
  DocumentReference? cart,
  DocumentReference? producto,
  DocumentReference? ordenAsociada,
  DocumentReference? creator,
  DocumentReference? variacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'image': image,
      'subTotal': subTotal,
      'cantidad': cantidad,
      'price': price,
      'cart': cart,
      'producto': producto,
      'ordenAsociada': ordenAsociada,
      'creator': creator,
      'variacion': variacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class SelectedItemsRecordDocumentEquality
    implements Equality<SelectedItemsRecord> {
  const SelectedItemsRecordDocumentEquality();

  @override
  bool equals(SelectedItemsRecord? e1, SelectedItemsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.subTotal == e2?.subTotal &&
        e1?.cantidad == e2?.cantidad &&
        e1?.price == e2?.price &&
        e1?.cart == e2?.cart &&
        e1?.producto == e2?.producto &&
        e1?.ordenAsociada == e2?.ordenAsociada &&
        e1?.creator == e2?.creator &&
        e1?.variacion == e2?.variacion;
  }

  @override
  int hash(SelectedItemsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.image,
        e?.subTotal,
        e?.cantidad,
        e?.price,
        e?.cart,
        e?.producto,
        e?.ordenAsociada,
        e?.creator,
        e?.variacion
      ]);

  @override
  bool isValidKey(Object? o) => o is SelectedItemsRecord;
}
