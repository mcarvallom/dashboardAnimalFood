import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CuponRecord extends FirestoreRecord {
  CuponRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "monto" field.
  int? _monto;
  int get monto => _monto ?? 0;
  bool hasMonto() => _monto != null;

  // "fechaCreado" field.
  DateTime? _fechaCreado;
  DateTime? get fechaCreado => _fechaCreado;
  bool hasFechaCreado() => _fechaCreado != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _monto = castToType<int>(snapshotData['monto']);
    _fechaCreado = snapshotData['fechaCreado'] as DateTime?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cupon');

  static Stream<CuponRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CuponRecord.fromSnapshot(s));

  static Future<CuponRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CuponRecord.fromSnapshot(s));

  static CuponRecord fromSnapshot(DocumentSnapshot snapshot) => CuponRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CuponRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CuponRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CuponRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CuponRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCuponRecordData({
  String? nombre,
  int? monto,
  DateTime? fechaCreado,
  int? cantidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'monto': monto,
      'fechaCreado': fechaCreado,
      'cantidad': cantidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class CuponRecordDocumentEquality implements Equality<CuponRecord> {
  const CuponRecordDocumentEquality();

  @override
  bool equals(CuponRecord? e1, CuponRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.monto == e2?.monto &&
        e1?.fechaCreado == e2?.fechaCreado &&
        e1?.cantidad == e2?.cantidad;
  }

  @override
  int hash(CuponRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.monto, e?.fechaCreado, e?.cantidad]);

  @override
  bool isValidKey(Object? o) => o is CuponRecord;
}
