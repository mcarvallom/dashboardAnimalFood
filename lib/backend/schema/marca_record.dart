import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MarcaRecord extends FirestoreRecord {
  MarcaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "categoria" field.
  List<DocumentReference>? _categoria;
  List<DocumentReference> get categoria => _categoria ?? const [];
  bool hasCategoria() => _categoria != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "nombreMarca" field.
  String? _nombreMarca;
  String get nombreMarca => _nombreMarca ?? '';
  bool hasNombreMarca() => _nombreMarca != null;

  // "destacado" field.
  bool? _destacado;
  bool get destacado => _destacado ?? false;
  bool hasDestacado() => _destacado != null;

  void _initializeFields() {
    _categoria = getDataList(snapshotData['categoria']);
    _imagen = snapshotData['imagen'] as String?;
    _nombreMarca = snapshotData['nombreMarca'] as String?;
    _destacado = snapshotData['destacado'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('marca');

  static Stream<MarcaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MarcaRecord.fromSnapshot(s));

  static Future<MarcaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MarcaRecord.fromSnapshot(s));

  static MarcaRecord fromSnapshot(DocumentSnapshot snapshot) => MarcaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MarcaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MarcaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MarcaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MarcaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMarcaRecordData({
  String? imagen,
  String? nombreMarca,
  bool? destacado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imagen': imagen,
      'nombreMarca': nombreMarca,
      'destacado': destacado,
    }.withoutNulls,
  );

  return firestoreData;
}

class MarcaRecordDocumentEquality implements Equality<MarcaRecord> {
  const MarcaRecordDocumentEquality();

  @override
  bool equals(MarcaRecord? e1, MarcaRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.categoria, e2?.categoria) &&
        e1?.imagen == e2?.imagen &&
        e1?.nombreMarca == e2?.nombreMarca &&
        e1?.destacado == e2?.destacado;
  }

  @override
  int hash(MarcaRecord? e) => const ListEquality()
      .hash([e?.categoria, e?.imagen, e?.nombreMarca, e?.destacado]);

  @override
  bool isValidKey(Object? o) => o is MarcaRecord;
}
