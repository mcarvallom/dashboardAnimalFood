import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecomendadoRecord extends FirestoreRecord {
  RecomendadoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "subtitulo" field.
  String? _subtitulo;
  String get subtitulo => _subtitulo ?? '';
  bool hasSubtitulo() => _subtitulo != null;

  // "productoAsociado" field.
  DocumentReference? _productoAsociado;
  DocumentReference? get productoAsociado => _productoAsociado;
  bool hasProductoAsociado() => _productoAsociado != null;

  // "fechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _subtitulo = snapshotData['subtitulo'] as String?;
    _productoAsociado = snapshotData['productoAsociado'] as DocumentReference?;
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recomendado');

  static Stream<RecomendadoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecomendadoRecord.fromSnapshot(s));

  static Future<RecomendadoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecomendadoRecord.fromSnapshot(s));

  static RecomendadoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecomendadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecomendadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecomendadoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecomendadoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecomendadoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecomendadoRecordData({
  String? titulo,
  String? subtitulo,
  DocumentReference? productoAsociado,
  DateTime? fechaCreacion,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'subtitulo': subtitulo,
      'productoAsociado': productoAsociado,
      'fechaCreacion': fechaCreacion,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecomendadoRecordDocumentEquality implements Equality<RecomendadoRecord> {
  const RecomendadoRecordDocumentEquality();

  @override
  bool equals(RecomendadoRecord? e1, RecomendadoRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.subtitulo == e2?.subtitulo &&
        e1?.productoAsociado == e2?.productoAsociado &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(RecomendadoRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.subtitulo,
        e?.productoAsociado,
        e?.fechaCreacion,
        e?.imagen
      ]);

  @override
  bool isValidKey(Object? o) => o is RecomendadoRecord;
}
