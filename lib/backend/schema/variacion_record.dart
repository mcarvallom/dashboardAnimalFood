import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VariacionRecord extends FirestoreRecord {
  VariacionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "tamanio" field.
  String? _tamanio;
  String get tamanio => _tamanio ?? '';
  bool hasTamanio() => _tamanio != null;

  // "precio" field.
  int? _precio;
  int get precio => _precio ?? 0;
  bool hasPrecio() => _precio != null;

  // "rebaja" field.
  int? _rebaja;
  int get rebaja => _rebaja ?? 0;
  bool hasRebaja() => _rebaja != null;

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  bool hasStock() => _stock != null;

  // "codigoBarra" field.
  String? _codigoBarra;
  String get codigoBarra => _codigoBarra ?? '';
  bool hasCodigoBarra() => _codigoBarra != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _tamanio = snapshotData['tamanio'] as String?;
    _precio = castToType<int>(snapshotData['precio']);
    _rebaja = castToType<int>(snapshotData['rebaja']);
    _stock = castToType<int>(snapshotData['stock']);
    _codigoBarra = snapshotData['codigoBarra'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('variacion')
          : FirebaseFirestore.instance.collectionGroup('variacion');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('variacion').doc(id);

  static Stream<VariacionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VariacionRecord.fromSnapshot(s));

  static Future<VariacionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VariacionRecord.fromSnapshot(s));

  static VariacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VariacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VariacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VariacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VariacionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VariacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVariacionRecordData({
  String? tamanio,
  int? precio,
  int? rebaja,
  int? stock,
  String? codigoBarra,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tamanio': tamanio,
      'precio': precio,
      'rebaja': rebaja,
      'stock': stock,
      'codigoBarra': codigoBarra,
    }.withoutNulls,
  );

  return firestoreData;
}

class VariacionRecordDocumentEquality implements Equality<VariacionRecord> {
  const VariacionRecordDocumentEquality();

  @override
  bool equals(VariacionRecord? e1, VariacionRecord? e2) {
    return e1?.tamanio == e2?.tamanio &&
        e1?.precio == e2?.precio &&
        e1?.rebaja == e2?.rebaja &&
        e1?.stock == e2?.stock &&
        e1?.codigoBarra == e2?.codigoBarra;
  }

  @override
  int hash(VariacionRecord? e) => const ListEquality()
      .hash([e?.tamanio, e?.precio, e?.rebaja, e?.stock, e?.codigoBarra]);

  @override
  bool isValidKey(Object? o) => o is VariacionRecord;
}
