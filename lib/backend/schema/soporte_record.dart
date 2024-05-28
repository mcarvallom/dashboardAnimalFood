import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SoporteRecord extends FirestoreRecord {
  SoporteRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombreCompleto" field.
  String? _nombreCompleto;
  String get nombreCompleto => _nombreCompleto ?? '';
  bool hasNombreCompleto() => _nombreCompleto != null;

  // "numeroTelefono" field.
  int? _numeroTelefono;
  int get numeroTelefono => _numeroTelefono ?? 0;
  bool hasNumeroTelefono() => _numeroTelefono != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "fechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "mensaje" field.
  String? _mensaje;
  String get mensaje => _mensaje ?? '';
  bool hasMensaje() => _mensaje != null;

  // "rut" field.
  String? _rut;
  String get rut => _rut ?? '';
  bool hasRut() => _rut != null;

  // "respuesta" field.
  String? _respuesta;
  String get respuesta => _respuesta ?? '';
  bool hasRespuesta() => _respuesta != null;

  // "usuarioUID" field.
  String? _usuarioUID;
  String get usuarioUID => _usuarioUID ?? '';
  bool hasUsuarioUID() => _usuarioUID != null;

  // "evidencia" field.
  String? _evidencia;
  String get evidencia => _evidencia ?? '';
  bool hasEvidencia() => _evidencia != null;

  // "mensajeRespuesta" field.
  List<SoporteStruct>? _mensajeRespuesta;
  List<SoporteStruct> get mensajeRespuesta => _mensajeRespuesta ?? const [];
  bool hasMensajeRespuesta() => _mensajeRespuesta != null;

  void _initializeFields() {
    _nombreCompleto = snapshotData['nombreCompleto'] as String?;
    _numeroTelefono = castToType<int>(snapshotData['numeroTelefono']);
    _email = snapshotData['email'] as String?;
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
    _mensaje = snapshotData['mensaje'] as String?;
    _rut = snapshotData['rut'] as String?;
    _respuesta = snapshotData['respuesta'] as String?;
    _usuarioUID = snapshotData['usuarioUID'] as String?;
    _evidencia = snapshotData['evidencia'] as String?;
    _mensajeRespuesta = getStructList(
      snapshotData['mensajeRespuesta'],
      SoporteStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('soporte');

  static Stream<SoporteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SoporteRecord.fromSnapshot(s));

  static Future<SoporteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SoporteRecord.fromSnapshot(s));

  static SoporteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SoporteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SoporteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SoporteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SoporteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SoporteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSoporteRecordData({
  String? nombreCompleto,
  int? numeroTelefono,
  String? email,
  DateTime? fechaCreacion,
  String? mensaje,
  String? rut,
  String? respuesta,
  String? usuarioUID,
  String? evidencia,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreCompleto': nombreCompleto,
      'numeroTelefono': numeroTelefono,
      'email': email,
      'fechaCreacion': fechaCreacion,
      'mensaje': mensaje,
      'rut': rut,
      'respuesta': respuesta,
      'usuarioUID': usuarioUID,
      'evidencia': evidencia,
    }.withoutNulls,
  );

  return firestoreData;
}

class SoporteRecordDocumentEquality implements Equality<SoporteRecord> {
  const SoporteRecordDocumentEquality();

  @override
  bool equals(SoporteRecord? e1, SoporteRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombreCompleto == e2?.nombreCompleto &&
        e1?.numeroTelefono == e2?.numeroTelefono &&
        e1?.email == e2?.email &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.mensaje == e2?.mensaje &&
        e1?.rut == e2?.rut &&
        e1?.respuesta == e2?.respuesta &&
        e1?.usuarioUID == e2?.usuarioUID &&
        e1?.evidencia == e2?.evidencia &&
        listEquality.equals(e1?.mensajeRespuesta, e2?.mensajeRespuesta);
  }

  @override
  int hash(SoporteRecord? e) => const ListEquality().hash([
        e?.nombreCompleto,
        e?.numeroTelefono,
        e?.email,
        e?.fechaCreacion,
        e?.mensaje,
        e?.rut,
        e?.respuesta,
        e?.usuarioUID,
        e?.evidencia,
        e?.mensajeRespuesta
      ]);

  @override
  bool isValidKey(Object? o) => o is SoporteRecord;
}
