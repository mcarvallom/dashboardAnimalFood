import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ViajeRecord extends FirestoreRecord {
  ViajeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user_location" field.
  LatLng? _userLocation;
  LatLng? get userLocation => _userLocation;
  bool hasUserLocation() => _userLocation != null;

  // "user_uid" field.
  String? _userUid;
  String get userUid => _userUid ?? '';
  bool hasUserUid() => _userUid != null;

  // "driver_location" field.
  LatLng? _driverLocation;
  LatLng? get driverLocation => _driverLocation;
  bool hasDriverLocation() => _driverLocation != null;

  // "drive_uid" field.
  String? _driveUid;
  String get driveUid => _driveUid ?? '';
  bool hasDriveUid() => _driveUid != null;

  // "destination_address" field.
  String? _destinationAddress;
  String get destinationAddress => _destinationAddress ?? '';
  bool hasDestinationAddress() => _destinationAddress != null;

  // "user_address" field.
  String? _userAddress;
  String get userAddress => _userAddress ?? '';
  bool hasUserAddress() => _userAddress != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "driver_name" field.
  String? _driverName;
  String get driverName => _driverName ?? '';
  bool hasDriverName() => _driverName != null;

  // "is_driver_assigned" field.
  bool? _isDriverAssigned;
  bool get isDriverAssigned => _isDriverAssigned ?? false;
  bool hasIsDriverAssigned() => _isDriverAssigned != null;

  // "cliente" field.
  DocumentReference? _cliente;
  DocumentReference? get cliente => _cliente;
  bool hasCliente() => _cliente != null;

  void _initializeFields() {
    _userLocation = snapshotData['user_location'] as LatLng?;
    _userUid = snapshotData['user_uid'] as String?;
    _driverLocation = snapshotData['driver_location'] as LatLng?;
    _driveUid = snapshotData['drive_uid'] as String?;
    _destinationAddress = snapshotData['destination_address'] as String?;
    _userAddress = snapshotData['user_address'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _driverName = snapshotData['driver_name'] as String?;
    _isDriverAssigned = snapshotData['is_driver_assigned'] as bool?;
    _cliente = snapshotData['cliente'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('viaje');

  static Stream<ViajeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ViajeRecord.fromSnapshot(s));

  static Future<ViajeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ViajeRecord.fromSnapshot(s));

  static ViajeRecord fromSnapshot(DocumentSnapshot snapshot) => ViajeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ViajeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ViajeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ViajeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ViajeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createViajeRecordData({
  LatLng? userLocation,
  String? userUid,
  LatLng? driverLocation,
  String? driveUid,
  String? destinationAddress,
  String? userAddress,
  String? userName,
  String? driverName,
  bool? isDriverAssigned,
  DocumentReference? cliente,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_location': userLocation,
      'user_uid': userUid,
      'driver_location': driverLocation,
      'drive_uid': driveUid,
      'destination_address': destinationAddress,
      'user_address': userAddress,
      'user_name': userName,
      'driver_name': driverName,
      'is_driver_assigned': isDriverAssigned,
      'cliente': cliente,
    }.withoutNulls,
  );

  return firestoreData;
}

class ViajeRecordDocumentEquality implements Equality<ViajeRecord> {
  const ViajeRecordDocumentEquality();

  @override
  bool equals(ViajeRecord? e1, ViajeRecord? e2) {
    return e1?.userLocation == e2?.userLocation &&
        e1?.userUid == e2?.userUid &&
        e1?.driverLocation == e2?.driverLocation &&
        e1?.driveUid == e2?.driveUid &&
        e1?.destinationAddress == e2?.destinationAddress &&
        e1?.userAddress == e2?.userAddress &&
        e1?.userName == e2?.userName &&
        e1?.driverName == e2?.driverName &&
        e1?.isDriverAssigned == e2?.isDriverAssigned &&
        e1?.cliente == e2?.cliente;
  }

  @override
  int hash(ViajeRecord? e) => const ListEquality().hash([
        e?.userLocation,
        e?.userUid,
        e?.driverLocation,
        e?.driveUid,
        e?.destinationAddress,
        e?.userAddress,
        e?.userName,
        e?.driverName,
        e?.isDriverAssigned,
        e?.cliente
      ]);

  @override
  bool isValidKey(Object? o) => o is ViajeRecord;
}
