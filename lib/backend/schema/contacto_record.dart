import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContactoRecord extends FirestoreRecord {
  ContactoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "asunto" field.
  String? _asunto;
  String get asunto => _asunto ?? '';
  bool hasAsunto() => _asunto != null;

  // "mensaje" field.
  String? _mensaje;
  String get mensaje => _mensaje ?? '';
  bool hasMensaje() => _mensaje != null;

  // "fechaCreado" field.
  DateTime? _fechaCreado;
  DateTime? get fechaCreado => _fechaCreado;
  bool hasFechaCreado() => _fechaCreado != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _email = snapshotData['email'] as String?;
    _asunto = snapshotData['asunto'] as String?;
    _mensaje = snapshotData['mensaje'] as String?;
    _fechaCreado = snapshotData['fechaCreado'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contacto');

  static Stream<ContactoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContactoRecord.fromSnapshot(s));

  static Future<ContactoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContactoRecord.fromSnapshot(s));

  static ContactoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContactoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContactoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContactoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContactoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContactoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContactoRecordData({
  String? nombre,
  String? email,
  String? asunto,
  String? mensaje,
  DateTime? fechaCreado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'email': email,
      'asunto': asunto,
      'mensaje': mensaje,
      'fechaCreado': fechaCreado,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContactoRecordDocumentEquality implements Equality<ContactoRecord> {
  const ContactoRecordDocumentEquality();

  @override
  bool equals(ContactoRecord? e1, ContactoRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.email == e2?.email &&
        e1?.asunto == e2?.asunto &&
        e1?.mensaje == e2?.mensaje &&
        e1?.fechaCreado == e2?.fechaCreado;
  }

  @override
  int hash(ContactoRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.email, e?.asunto, e?.mensaje, e?.fechaCreado]);

  @override
  bool isValidKey(Object? o) => o is ContactoRecord;
}
