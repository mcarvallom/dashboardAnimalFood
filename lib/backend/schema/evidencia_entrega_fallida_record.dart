import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EvidenciaEntregaFallidaRecord extends FirestoreRecord {
  EvidenciaEntregaFallidaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "repartidor" field.
  DocumentReference? _repartidor;
  DocumentReference? get repartidor => _repartidor;
  bool hasRepartidor() => _repartidor != null;

  // "fechaEntrega" field.
  DateTime? _fechaEntrega;
  DateTime? get fechaEntrega => _fechaEntrega;
  bool hasFechaEntrega() => _fechaEntrega != null;

  // "fotoConversacion" field.
  String? _fotoConversacion;
  String get fotoConversacion => _fotoConversacion ?? '';
  bool hasFotoConversacion() => _fotoConversacion != null;

  // "fotoDomicilio" field.
  String? _fotoDomicilio;
  String get fotoDomicilio => _fotoDomicilio ?? '';
  bool hasFotoDomicilio() => _fotoDomicilio != null;

  // "cliente" field.
  DocumentReference? _cliente;
  DocumentReference? get cliente => _cliente;
  bool hasCliente() => _cliente != null;

  // "orden" field.
  DocumentReference? _orden;
  DocumentReference? get orden => _orden;
  bool hasOrden() => _orden != null;

  void _initializeFields() {
    _repartidor = snapshotData['repartidor'] as DocumentReference?;
    _fechaEntrega = snapshotData['fechaEntrega'] as DateTime?;
    _fotoConversacion = snapshotData['fotoConversacion'] as String?;
    _fotoDomicilio = snapshotData['fotoDomicilio'] as String?;
    _cliente = snapshotData['cliente'] as DocumentReference?;
    _orden = snapshotData['orden'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('evidenciaEntregaFallida');

  static Stream<EvidenciaEntregaFallidaRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => EvidenciaEntregaFallidaRecord.fromSnapshot(s));

  static Future<EvidenciaEntregaFallidaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EvidenciaEntregaFallidaRecord.fromSnapshot(s));

  static EvidenciaEntregaFallidaRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      EvidenciaEntregaFallidaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EvidenciaEntregaFallidaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EvidenciaEntregaFallidaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EvidenciaEntregaFallidaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EvidenciaEntregaFallidaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEvidenciaEntregaFallidaRecordData({
  DocumentReference? repartidor,
  DateTime? fechaEntrega,
  String? fotoConversacion,
  String? fotoDomicilio,
  DocumentReference? cliente,
  DocumentReference? orden,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'repartidor': repartidor,
      'fechaEntrega': fechaEntrega,
      'fotoConversacion': fotoConversacion,
      'fotoDomicilio': fotoDomicilio,
      'cliente': cliente,
      'orden': orden,
    }.withoutNulls,
  );

  return firestoreData;
}

class EvidenciaEntregaFallidaRecordDocumentEquality
    implements Equality<EvidenciaEntregaFallidaRecord> {
  const EvidenciaEntregaFallidaRecordDocumentEquality();

  @override
  bool equals(
      EvidenciaEntregaFallidaRecord? e1, EvidenciaEntregaFallidaRecord? e2) {
    return e1?.repartidor == e2?.repartidor &&
        e1?.fechaEntrega == e2?.fechaEntrega &&
        e1?.fotoConversacion == e2?.fotoConversacion &&
        e1?.fotoDomicilio == e2?.fotoDomicilio &&
        e1?.cliente == e2?.cliente &&
        e1?.orden == e2?.orden;
  }

  @override
  int hash(EvidenciaEntregaFallidaRecord? e) => const ListEquality().hash([
        e?.repartidor,
        e?.fechaEntrega,
        e?.fotoConversacion,
        e?.fotoDomicilio,
        e?.cliente,
        e?.orden
      ]);

  @override
  bool isValidKey(Object? o) => o is EvidenciaEntregaFallidaRecord;
}
