import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificacionesRecord extends FirestoreRecord {
  NotificacionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "mensaje" field.
  String? _mensaje;
  String get mensaje => _mensaje ?? '';
  bool hasMensaje() => _mensaje != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _titulo = snapshotData['titulo'] as String?;
    _mensaje = snapshotData['mensaje'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notificaciones');

  static Stream<NotificacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificacionesRecord.fromSnapshot(s));

  static Future<NotificacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificacionesRecord.fromSnapshot(s));

  static NotificacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificacionesRecordData({
  DocumentReference? user,
  String? titulo,
  String? mensaje,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'titulo': titulo,
      'mensaje': mensaje,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificacionesRecordDocumentEquality
    implements Equality<NotificacionesRecord> {
  const NotificacionesRecordDocumentEquality();

  @override
  bool equals(NotificacionesRecord? e1, NotificacionesRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.titulo == e2?.titulo &&
        e1?.mensaje == e2?.mensaje &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(NotificacionesRecord? e) =>
      const ListEquality().hash([e?.user, e?.titulo, e?.mensaje, e?.fecha]);

  @override
  bool isValidKey(Object? o) => o is NotificacionesRecord;
}
