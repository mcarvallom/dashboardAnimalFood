import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioRecord extends FirestoreRecord {
  UsuarioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  bool hasApellido() => _apellido != null;

  // "dv" field.
  String? _dv;
  String get dv => _dv ?? '';
  bool hasDv() => _dv != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "numeroCelular" field.
  int? _numeroCelular;
  int get numeroCelular => _numeroCelular ?? 0;
  bool hasNumeroCelular() => _numeroCelular != null;

  // "nota" field.
  String? _nota;
  String get nota => _nota ?? '';
  bool hasNota() => _nota != null;

  // "pedidos" field.
  List<DocumentReference>? _pedidos;
  List<DocumentReference> get pedidos => _pedidos ?? const [];
  bool hasPedidos() => _pedidos != null;

  // "ciudad" field.
  String? _ciudad;
  String get ciudad => _ciudad ?? '';
  bool hasCiudad() => _ciudad != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  bool hasRegion() => _region != null;

  // "pais" field.
  String? _pais;
  String get pais => _pais ?? '';
  bool hasPais() => _pais != null;

  // "dvEmpresa" field.
  String? _dvEmpresa;
  String get dvEmpresa => _dvEmpresa ?? '';
  bool hasDvEmpresa() => _dvEmpresa != null;

  // "nombreEmpresa" field.
  String? _nombreEmpresa;
  String get nombreEmpresa => _nombreEmpresa ?? '';
  bool hasNombreEmpresa() => _nombreEmpresa != null;

  // "direccionEmpresa" field.
  String? _direccionEmpresa;
  String get direccionEmpresa => _direccionEmpresa ?? '';
  bool hasDireccionEmpresa() => _direccionEmpresa != null;

  // "celularEmpresa" field.
  String? _celularEmpresa;
  String get celularEmpresa => _celularEmpresa ?? '';
  bool hasCelularEmpresa() => _celularEmpresa != null;

  // "isEmpresa" field.
  bool? _isEmpresa;
  bool get isEmpresa => _isEmpresa ?? false;
  bool hasIsEmpresa() => _isEmpresa != null;

  // "run" field.
  String? _run;
  String get run => _run ?? '';
  bool hasRun() => _run != null;

  // "runEmpresa" field.
  String? _runEmpresa;
  String get runEmpresa => _runEmpresa ?? '';
  bool hasRunEmpresa() => _runEmpresa != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _apellido = snapshotData['apellido'] as String?;
    _dv = snapshotData['dv'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _numeroCelular = castToType<int>(snapshotData['numeroCelular']);
    _nota = snapshotData['nota'] as String?;
    _pedidos = getDataList(snapshotData['pedidos']);
    _ciudad = snapshotData['ciudad'] as String?;
    _region = snapshotData['region'] as String?;
    _pais = snapshotData['pais'] as String?;
    _dvEmpresa = snapshotData['dvEmpresa'] as String?;
    _nombreEmpresa = snapshotData['nombreEmpresa'] as String?;
    _direccionEmpresa = snapshotData['direccionEmpresa'] as String?;
    _celularEmpresa = snapshotData['celularEmpresa'] as String?;
    _isEmpresa = snapshotData['isEmpresa'] as bool?;
    _run = snapshotData['run'] as String?;
    _runEmpresa = snapshotData['runEmpresa'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuario');

  static Stream<UsuarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuarioRecord.fromSnapshot(s));

  static Future<UsuarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuarioRecord.fromSnapshot(s));

  static UsuarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuarioRecordData({
  String? nombre,
  String? apellido,
  String? dv,
  String? direccion,
  int? numeroCelular,
  String? nota,
  String? ciudad,
  String? region,
  String? pais,
  String? dvEmpresa,
  String? nombreEmpresa,
  String? direccionEmpresa,
  String? celularEmpresa,
  bool? isEmpresa,
  String? run,
  String? runEmpresa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'apellido': apellido,
      'dv': dv,
      'direccion': direccion,
      'numeroCelular': numeroCelular,
      'nota': nota,
      'ciudad': ciudad,
      'region': region,
      'pais': pais,
      'dvEmpresa': dvEmpresa,
      'nombreEmpresa': nombreEmpresa,
      'direccionEmpresa': direccionEmpresa,
      'celularEmpresa': celularEmpresa,
      'isEmpresa': isEmpresa,
      'run': run,
      'runEmpresa': runEmpresa,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuarioRecordDocumentEquality implements Equality<UsuarioRecord> {
  const UsuarioRecordDocumentEquality();

  @override
  bool equals(UsuarioRecord? e1, UsuarioRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombre == e2?.nombre &&
        e1?.apellido == e2?.apellido &&
        e1?.dv == e2?.dv &&
        e1?.direccion == e2?.direccion &&
        e1?.numeroCelular == e2?.numeroCelular &&
        e1?.nota == e2?.nota &&
        listEquality.equals(e1?.pedidos, e2?.pedidos) &&
        e1?.ciudad == e2?.ciudad &&
        e1?.region == e2?.region &&
        e1?.pais == e2?.pais &&
        e1?.dvEmpresa == e2?.dvEmpresa &&
        e1?.nombreEmpresa == e2?.nombreEmpresa &&
        e1?.direccionEmpresa == e2?.direccionEmpresa &&
        e1?.celularEmpresa == e2?.celularEmpresa &&
        e1?.isEmpresa == e2?.isEmpresa &&
        e1?.run == e2?.run &&
        e1?.runEmpresa == e2?.runEmpresa;
  }

  @override
  int hash(UsuarioRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.apellido,
        e?.dv,
        e?.direccion,
        e?.numeroCelular,
        e?.nota,
        e?.pedidos,
        e?.ciudad,
        e?.region,
        e?.pais,
        e?.dvEmpresa,
        e?.nombreEmpresa,
        e?.direccionEmpresa,
        e?.celularEmpresa,
        e?.isEmpresa,
        e?.run,
        e?.runEmpresa
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuarioRecord;
}
