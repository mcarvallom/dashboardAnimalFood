import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TiendaRecord extends FirestoreRecord {
  TiendaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "hora_de_apertura" field.
  DateTime? _horaDeApertura;
  DateTime? get horaDeApertura => _horaDeApertura;
  bool hasHoraDeApertura() => _horaDeApertura != null;

  // "hora_de_cierre" field.
  DateTime? _horaDeCierre;
  DateTime? get horaDeCierre => _horaDeCierre;
  bool hasHoraDeCierre() => _horaDeCierre != null;

  // "horaInicioAlmuerzo" field.
  DateTime? _horaInicioAlmuerzo;
  DateTime? get horaInicioAlmuerzo => _horaInicioAlmuerzo;
  bool hasHoraInicioAlmuerzo() => _horaInicioAlmuerzo != null;

  // "horaFinAlmuerzo" field.
  DateTime? _horaFinAlmuerzo;
  DateTime? get horaFinAlmuerzo => _horaFinAlmuerzo;
  bool hasHoraFinAlmuerzo() => _horaFinAlmuerzo != null;

  // "logoTienda" field.
  String? _logoTienda;
  String get logoTienda => _logoTienda ?? '';
  bool hasLogoTienda() => _logoTienda != null;

  // "totalOrdenes" field.
  int? _totalOrdenes;
  int get totalOrdenes => _totalOrdenes ?? 0;
  bool hasTotalOrdenes() => _totalOrdenes != null;

  // "ubicacion" field.
  LatLng? _ubicacion;
  LatLng? get ubicacion => _ubicacion;
  bool hasUbicacion() => _ubicacion != null;

  // "totalGanancias" field.
  double? _totalGanancias;
  double get totalGanancias => _totalGanancias ?? 0.0;
  bool hasTotalGanancias() => _totalGanancias != null;

  // "portadaPerfil" field.
  String? _portadaPerfil;
  String get portadaPerfil => _portadaPerfil ?? '';
  bool hasPortadaPerfil() => _portadaPerfil != null;

  // "portadaPagCategoria" field.
  String? _portadaPagCategoria;
  String get portadaPagCategoria => _portadaPagCategoria ?? '';
  bool hasPortadaPagCategoria() => _portadaPagCategoria != null;

  void _initializeFields() {
    _horaDeApertura = snapshotData['hora_de_apertura'] as DateTime?;
    _horaDeCierre = snapshotData['hora_de_cierre'] as DateTime?;
    _horaInicioAlmuerzo = snapshotData['horaInicioAlmuerzo'] as DateTime?;
    _horaFinAlmuerzo = snapshotData['horaFinAlmuerzo'] as DateTime?;
    _logoTienda = snapshotData['logoTienda'] as String?;
    _totalOrdenes = castToType<int>(snapshotData['totalOrdenes']);
    _ubicacion = snapshotData['ubicacion'] as LatLng?;
    _totalGanancias = castToType<double>(snapshotData['totalGanancias']);
    _portadaPerfil = snapshotData['portadaPerfil'] as String?;
    _portadaPagCategoria = snapshotData['portadaPagCategoria'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tienda');

  static Stream<TiendaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TiendaRecord.fromSnapshot(s));

  static Future<TiendaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TiendaRecord.fromSnapshot(s));

  static TiendaRecord fromSnapshot(DocumentSnapshot snapshot) => TiendaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TiendaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TiendaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TiendaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TiendaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTiendaRecordData({
  DateTime? horaDeApertura,
  DateTime? horaDeCierre,
  DateTime? horaInicioAlmuerzo,
  DateTime? horaFinAlmuerzo,
  String? logoTienda,
  int? totalOrdenes,
  LatLng? ubicacion,
  double? totalGanancias,
  String? portadaPerfil,
  String? portadaPagCategoria,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'hora_de_apertura': horaDeApertura,
      'hora_de_cierre': horaDeCierre,
      'horaInicioAlmuerzo': horaInicioAlmuerzo,
      'horaFinAlmuerzo': horaFinAlmuerzo,
      'logoTienda': logoTienda,
      'totalOrdenes': totalOrdenes,
      'ubicacion': ubicacion,
      'totalGanancias': totalGanancias,
      'portadaPerfil': portadaPerfil,
      'portadaPagCategoria': portadaPagCategoria,
    }.withoutNulls,
  );

  return firestoreData;
}

class TiendaRecordDocumentEquality implements Equality<TiendaRecord> {
  const TiendaRecordDocumentEquality();

  @override
  bool equals(TiendaRecord? e1, TiendaRecord? e2) {
    return e1?.horaDeApertura == e2?.horaDeApertura &&
        e1?.horaDeCierre == e2?.horaDeCierre &&
        e1?.horaInicioAlmuerzo == e2?.horaInicioAlmuerzo &&
        e1?.horaFinAlmuerzo == e2?.horaFinAlmuerzo &&
        e1?.logoTienda == e2?.logoTienda &&
        e1?.totalOrdenes == e2?.totalOrdenes &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.totalGanancias == e2?.totalGanancias &&
        e1?.portadaPerfil == e2?.portadaPerfil &&
        e1?.portadaPagCategoria == e2?.portadaPagCategoria;
  }

  @override
  int hash(TiendaRecord? e) => const ListEquality().hash([
        e?.horaDeApertura,
        e?.horaDeCierre,
        e?.horaInicioAlmuerzo,
        e?.horaFinAlmuerzo,
        e?.logoTienda,
        e?.totalOrdenes,
        e?.ubicacion,
        e?.totalGanancias,
        e?.portadaPerfil,
        e?.portadaPagCategoria
      ]);

  @override
  bool isValidKey(Object? o) => o is TiendaRecord;
}
