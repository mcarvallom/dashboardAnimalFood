import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EvidenciaEntregaRecord extends FirestoreRecord {
  EvidenciaEntregaRecord._(
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

  // "fotoEntrega" field.
  String? _fotoEntrega;
  String get fotoEntrega => _fotoEntrega ?? '';
  bool hasFotoEntrega() => _fotoEntrega != null;

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
    _fotoEntrega = snapshotData['fotoEntrega'] as String?;
    _cliente = snapshotData['cliente'] as DocumentReference?;
    _orden = snapshotData['orden'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('evidenciaEntrega');

  static Stream<EvidenciaEntregaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EvidenciaEntregaRecord.fromSnapshot(s));

  static Future<EvidenciaEntregaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EvidenciaEntregaRecord.fromSnapshot(s));

  static EvidenciaEntregaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EvidenciaEntregaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EvidenciaEntregaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EvidenciaEntregaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EvidenciaEntregaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EvidenciaEntregaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEvidenciaEntregaRecordData({
  DocumentReference? repartidor,
  DateTime? fechaEntrega,
  String? fotoEntrega,
  DocumentReference? cliente,
  DocumentReference? orden,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'repartidor': repartidor,
      'fechaEntrega': fechaEntrega,
      'fotoEntrega': fotoEntrega,
      'cliente': cliente,
      'orden': orden,
    }.withoutNulls,
  );

  return firestoreData;
}

class EvidenciaEntregaRecordDocumentEquality
    implements Equality<EvidenciaEntregaRecord> {
  const EvidenciaEntregaRecordDocumentEquality();

  @override
  bool equals(EvidenciaEntregaRecord? e1, EvidenciaEntregaRecord? e2) {
    return e1?.repartidor == e2?.repartidor &&
        e1?.fechaEntrega == e2?.fechaEntrega &&
        e1?.fotoEntrega == e2?.fotoEntrega &&
        e1?.cliente == e2?.cliente &&
        e1?.orden == e2?.orden;
  }

  @override
  int hash(EvidenciaEntregaRecord? e) => const ListEquality().hash(
      [e?.repartidor, e?.fechaEntrega, e?.fotoEntrega, e?.cliente, e?.orden]);

  @override
  bool isValidKey(Object? o) => o is EvidenciaEntregaRecord;
}
