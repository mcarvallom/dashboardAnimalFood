import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryRecord extends FirestoreRecord {
  CategoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  List<String>? _nombre;
  List<String> get nombre => _nombre ?? const [];
  bool hasNombre() => _nombre != null;

  // "categoriaPadre" field.
  List<String>? _categoriaPadre;
  List<String> get categoriaPadre => _categoriaPadre ?? const [];
  bool hasCategoriaPadre() => _categoriaPadre != null;

  // "nombreEtiqueta" field.
  String? _nombreEtiqueta;
  String get nombreEtiqueta => _nombreEtiqueta ?? '';
  bool hasNombreEtiqueta() => _nombreEtiqueta != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _nombre = getDataList(snapshotData['nombre']);
    _categoriaPadre = getDataList(snapshotData['categoriaPadre']);
    _nombreEtiqueta = snapshotData['nombreEtiqueta'] as String?;
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('category');

  static Stream<CategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoryRecord.fromSnapshot(s));

  static Future<CategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoryRecord.fromSnapshot(s));

  static CategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoryRecordData({
  String? nombreEtiqueta,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreEtiqueta': nombreEtiqueta,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoryRecordDocumentEquality implements Equality<CategoryRecord> {
  const CategoryRecordDocumentEquality();

  @override
  bool equals(CategoryRecord? e1, CategoryRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.nombre, e2?.nombre) &&
        listEquality.equals(e1?.categoriaPadre, e2?.categoriaPadre) &&
        e1?.nombreEtiqueta == e2?.nombreEtiqueta &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(CategoryRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.categoriaPadre, e?.nombreEtiqueta, e?.imagen]);

  @override
  bool isValidKey(Object? o) => o is CategoryRecord;
}
