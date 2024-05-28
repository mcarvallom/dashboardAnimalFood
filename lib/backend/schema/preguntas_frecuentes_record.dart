import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class PreguntasFrecuentesRecord extends FirestoreRecord {
  PreguntasFrecuentesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "pregunta" field.
  String? _pregunta;
  String get pregunta => _pregunta ?? '';
  bool hasPregunta() => _pregunta != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "respuesta" field.
  String? _respuesta;
  String get respuesta => _respuesta ?? '';
  bool hasRespuesta() => _respuesta != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _pregunta = snapshotData['pregunta'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _respuesta = snapshotData['respuesta'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PreguntasFrecuentes');

  static Stream<PreguntasFrecuentesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PreguntasFrecuentesRecord.fromSnapshot(s));

  static Future<PreguntasFrecuentesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PreguntasFrecuentesRecord.fromSnapshot(s));

  static PreguntasFrecuentesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PreguntasFrecuentesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PreguntasFrecuentesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PreguntasFrecuentesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PreguntasFrecuentesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PreguntasFrecuentesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPreguntasFrecuentesRecordData({
  DocumentReference? usuario,
  String? pregunta,
  DateTime? fecha,
  String? respuesta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'pregunta': pregunta,
      'fecha': fecha,
      'respuesta': respuesta,
    }.withoutNulls,
  );

  return firestoreData;
}

class PreguntasFrecuentesRecordDocumentEquality
    implements Equality<PreguntasFrecuentesRecord> {
  const PreguntasFrecuentesRecordDocumentEquality();

  @override
  bool equals(PreguntasFrecuentesRecord? e1, PreguntasFrecuentesRecord? e2) {
    return e1?.usuario == e2?.usuario &&
        e1?.pregunta == e2?.pregunta &&
        e1?.fecha == e2?.fecha &&
        e1?.respuesta == e2?.respuesta;
  }

  @override
  int hash(PreguntasFrecuentesRecord? e) => const ListEquality()
      .hash([e?.usuario, e?.pregunta, e?.fecha, e?.respuesta]);

  @override
  bool isValidKey(Object? o) => o is PreguntasFrecuentesRecord;
}
