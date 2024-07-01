// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SoporteStruct extends FFFirebaseStruct {
  SoporteStruct({
    String? mensaje,
    DateTime? fecha,
    DocumentReference? usuario,
    String? imagen,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _mensaje = mensaje,
        _fecha = fecha,
        _usuario = usuario,
        _imagen = imagen,
        super(firestoreUtilData);

  // "mensaje" field.
  String? _mensaje;
  String get mensaje => _mensaje ?? '';
  set mensaje(String? val) => _mensaje = val;

  bool hasMensaje() => _mensaje != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  set fecha(DateTime? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  set usuario(DocumentReference? val) => _usuario = val;

  bool hasUsuario() => _usuario != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  set imagen(String? val) => _imagen = val;

  bool hasImagen() => _imagen != null;

  static SoporteStruct fromMap(Map<String, dynamic> data) => SoporteStruct(
        mensaje: data['mensaje'] as String?,
        fecha: data['fecha'] as DateTime?,
        usuario: data['usuario'] as DocumentReference?,
        imagen: data['imagen'] as String?,
      );

  static SoporteStruct? maybeFromMap(dynamic data) =>
      data is Map ? SoporteStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'mensaje': _mensaje,
        'fecha': _fecha,
        'usuario': _usuario,
        'imagen': _imagen,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'mensaje': serializeParam(
          _mensaje,
          ParamType.String,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.DateTime,
        ),
        'usuario': serializeParam(
          _usuario,
          ParamType.DocumentReference,
        ),
        'imagen': serializeParam(
          _imagen,
          ParamType.String,
        ),
      }.withoutNulls;

  static SoporteStruct fromSerializableMap(Map<String, dynamic> data) =>
      SoporteStruct(
        mensaje: deserializeParam(
          data['mensaje'],
          ParamType.String,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.DateTime,
          false,
        ),
        usuario: deserializeParam(
          data['usuario'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['user'],
        ),
        imagen: deserializeParam(
          data['imagen'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SoporteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SoporteStruct &&
        mensaje == other.mensaje &&
        fecha == other.fecha &&
        usuario == other.usuario &&
        imagen == other.imagen;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([mensaje, fecha, usuario, imagen]);
}

SoporteStruct createSoporteStruct({
  String? mensaje,
  DateTime? fecha,
  DocumentReference? usuario,
  String? imagen,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SoporteStruct(
      mensaje: mensaje,
      fecha: fecha,
      usuario: usuario,
      imagen: imagen,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SoporteStruct? updateSoporteStruct(
  SoporteStruct? soporte, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    soporte
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSoporteStructData(
  Map<String, dynamic> firestoreData,
  SoporteStruct? soporte,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (soporte == null) {
    return;
  }
  if (soporte.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && soporte.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final soporteData = getSoporteFirestoreData(soporte, forFieldValue);
  final nestedData = soporteData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = soporte.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSoporteFirestoreData(
  SoporteStruct? soporte, [
  bool forFieldValue = false,
]) {
  if (soporte == null) {
    return {};
  }
  final firestoreData = mapToFirestore(soporte.toMap());

  // Add any Firestore field values
  soporte.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSoporteListFirestoreData(
  List<SoporteStruct>? soportes,
) =>
    soportes?.map((e) => getSoporteFirestoreData(e, true)).toList() ?? [];
