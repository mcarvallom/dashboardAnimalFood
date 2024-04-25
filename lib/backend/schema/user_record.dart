import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "rut" field.
  int? _rut;
  int get rut => _rut ?? 0;
  bool hasRut() => _rut != null;

  // "nombre_completo" field.
  String? _nombreCompleto;
  String get nombreCompleto => _nombreCompleto ?? '';
  bool hasNombreCompleto() => _nombreCompleto != null;

  // "isDelivery" field.
  bool? _isDelivery;
  bool get isDelivery => _isDelivery ?? false;
  bool hasIsDelivery() => _isDelivery != null;

  // "isVendedor" field.
  bool? _isVendedor;
  bool get isVendedor => _isVendedor ?? false;
  bool hasIsVendedor() => _isVendedor != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "isCliente" field.
  bool? _isCliente;
  bool get isCliente => _isCliente ?? false;
  bool hasIsCliente() => _isCliente != null;

  // "adminGeneral" field.
  bool? _adminGeneral;
  bool get adminGeneral => _adminGeneral ?? false;
  bool hasAdminGeneral() => _adminGeneral != null;

  // "Pais" field.
  String? _pais;
  String get pais => _pais ?? '';
  bool hasPais() => _pais != null;

  // "Region" field.
  String? _region;
  String get region => _region ?? '';
  bool hasRegion() => _region != null;

  // "Sector" field.
  String? _sector;
  String get sector => _sector ?? '';
  bool hasSector() => _sector != null;

  // "dv" field.
  String? _dv;
  String get dv => _dv ?? '';
  bool hasDv() => _dv != null;

  // "isInventario" field.
  bool? _isInventario;
  bool get isInventario => _isInventario ?? false;
  bool hasIsInventario() => _isInventario != null;

  // "apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  bool hasApellido() => _apellido != null;

  // "numeroTelefono" field.
  int? _numeroTelefono;
  int get numeroTelefono => _numeroTelefono ?? 0;
  bool hasNumeroTelefono() => _numeroTelefono != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _rut = castToType<int>(snapshotData['rut']);
    _nombreCompleto = snapshotData['nombre_completo'] as String?;
    _isDelivery = snapshotData['isDelivery'] as bool?;
    _isVendedor = snapshotData['isVendedor'] as bool?;
    _isAdmin = snapshotData['isAdmin'] as bool?;
    _isCliente = snapshotData['isCliente'] as bool?;
    _adminGeneral = snapshotData['adminGeneral'] as bool?;
    _pais = snapshotData['Pais'] as String?;
    _region = snapshotData['Region'] as String?;
    _sector = snapshotData['Sector'] as String?;
    _dv = snapshotData['dv'] as String?;
    _isInventario = snapshotData['isInventario'] as bool?;
    _apellido = snapshotData['apellido'] as String?;
    _numeroTelefono = castToType<int>(snapshotData['numeroTelefono']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? direccion,
  int? rut,
  String? nombreCompleto,
  bool? isDelivery,
  bool? isVendedor,
  bool? isAdmin,
  bool? isCliente,
  bool? adminGeneral,
  String? pais,
  String? region,
  String? sector,
  String? dv,
  bool? isInventario,
  String? apellido,
  int? numeroTelefono,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'direccion': direccion,
      'rut': rut,
      'nombre_completo': nombreCompleto,
      'isDelivery': isDelivery,
      'isVendedor': isVendedor,
      'isAdmin': isAdmin,
      'isCliente': isCliente,
      'adminGeneral': adminGeneral,
      'Pais': pais,
      'Region': region,
      'Sector': sector,
      'dv': dv,
      'isInventario': isInventario,
      'apellido': apellido,
      'numeroTelefono': numeroTelefono,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.direccion == e2?.direccion &&
        e1?.rut == e2?.rut &&
        e1?.nombreCompleto == e2?.nombreCompleto &&
        e1?.isDelivery == e2?.isDelivery &&
        e1?.isVendedor == e2?.isVendedor &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.isCliente == e2?.isCliente &&
        e1?.adminGeneral == e2?.adminGeneral &&
        e1?.pais == e2?.pais &&
        e1?.region == e2?.region &&
        e1?.sector == e2?.sector &&
        e1?.dv == e2?.dv &&
        e1?.isInventario == e2?.isInventario &&
        e1?.apellido == e2?.apellido &&
        e1?.numeroTelefono == e2?.numeroTelefono;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.direccion,
        e?.rut,
        e?.nombreCompleto,
        e?.isDelivery,
        e?.isVendedor,
        e?.isAdmin,
        e?.isCliente,
        e?.adminGeneral,
        e?.pais,
        e?.region,
        e?.sector,
        e?.dv,
        e?.isInventario,
        e?.apellido,
        e?.numeroTelefono
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
