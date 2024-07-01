import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriaPadreRecord extends FirestoreRecord {
  CategoriaPadreRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombreCategoriaPadre" field.
  String? _nombreCategoriaPadre;
  String get nombreCategoriaPadre => _nombreCategoriaPadre ?? '';
  bool hasNombreCategoriaPadre() => _nombreCategoriaPadre != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "fechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  void _initializeFields() {
    _nombreCategoriaPadre = snapshotData['nombreCategoriaPadre'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categoriaPadre');

  static Stream<CategoriaPadreRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriaPadreRecord.fromSnapshot(s));

  static Future<CategoriaPadreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoriaPadreRecord.fromSnapshot(s));

  static CategoriaPadreRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriaPadreRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriaPadreRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriaPadreRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoriaPadreRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoriaPadreRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoriaPadreRecordData({
  String? nombreCategoriaPadre,
  String? imagen,
  DateTime? fechaCreacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreCategoriaPadre': nombreCategoriaPadre,
      'imagen': imagen,
      'fechaCreacion': fechaCreacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoriaPadreRecordDocumentEquality
    implements Equality<CategoriaPadreRecord> {
  const CategoriaPadreRecordDocumentEquality();

  @override
  bool equals(CategoriaPadreRecord? e1, CategoriaPadreRecord? e2) {
    return e1?.nombreCategoriaPadre == e2?.nombreCategoriaPadre &&
        e1?.imagen == e2?.imagen &&
        e1?.fechaCreacion == e2?.fechaCreacion;
  }

  @override
  int hash(CategoriaPadreRecord? e) => const ListEquality()
      .hash([e?.nombreCategoriaPadre, e?.imagen, e?.fechaCreacion]);

  @override
  bool isValidKey(Object? o) => o is CategoriaPadreRecord;
}
