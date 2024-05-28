import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ComentarioProductoRecord extends FirestoreRecord {
  ComentarioProductoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "comentario" field.
  String? _comentario;
  String get comentario => _comentario ?? '';
  bool hasComentario() => _comentario != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "productoAsociado" field.
  DocumentReference? _productoAsociado;
  DocumentReference? get productoAsociado => _productoAsociado;
  bool hasProductoAsociado() => _productoAsociado != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _comentario = snapshotData['comentario'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _productoAsociado = snapshotData['productoAsociado'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comentarioProducto');

  static Stream<ComentarioProductoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComentarioProductoRecord.fromSnapshot(s));

  static Future<ComentarioProductoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ComentarioProductoRecord.fromSnapshot(s));

  static ComentarioProductoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ComentarioProductoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComentarioProductoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComentarioProductoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComentarioProductoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComentarioProductoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComentarioProductoRecordData({
  DocumentReference? usuario,
  String? comentario,
  DateTime? fecha,
  DocumentReference? productoAsociado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'comentario': comentario,
      'fecha': fecha,
      'productoAsociado': productoAsociado,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComentarioProductoRecordDocumentEquality
    implements Equality<ComentarioProductoRecord> {
  const ComentarioProductoRecordDocumentEquality();

  @override
  bool equals(ComentarioProductoRecord? e1, ComentarioProductoRecord? e2) {
    return e1?.usuario == e2?.usuario &&
        e1?.comentario == e2?.comentario &&
        e1?.fecha == e2?.fecha &&
        e1?.productoAsociado == e2?.productoAsociado;
  }

  @override
  int hash(ComentarioProductoRecord? e) => const ListEquality()
      .hash([e?.usuario, e?.comentario, e?.fecha, e?.productoAsociado]);

  @override
  bool isValidKey(Object? o) => o is ComentarioProductoRecord;
}
