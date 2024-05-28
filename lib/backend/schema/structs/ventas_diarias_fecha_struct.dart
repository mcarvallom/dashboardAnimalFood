// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VentasDiariasFechaStruct extends FFFirebaseStruct {
  VentasDiariasFechaStruct({
    List<VentasDiariasStruct>? cuentasDiarias,
    DateTime? fecha,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cuentasDiarias = cuentasDiarias,
        _fecha = fecha,
        super(firestoreUtilData);

  // "cuentasDiarias" field.
  List<VentasDiariasStruct>? _cuentasDiarias;
  List<VentasDiariasStruct> get cuentasDiarias => _cuentasDiarias ?? const [];
  set cuentasDiarias(List<VentasDiariasStruct>? val) => _cuentasDiarias = val;
  void updateCuentasDiarias(Function(List<VentasDiariasStruct>) updateFn) =>
      updateFn(_cuentasDiarias ??= []);
  bool hasCuentasDiarias() => _cuentasDiarias != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  set fecha(DateTime? val) => _fecha = val;
  bool hasFecha() => _fecha != null;

  static VentasDiariasFechaStruct fromMap(Map<String, dynamic> data) =>
      VentasDiariasFechaStruct(
        cuentasDiarias: getStructList(
          data['cuentasDiarias'],
          VentasDiariasStruct.fromMap,
        ),
        fecha: data['fecha'] as DateTime?,
      );

  static VentasDiariasFechaStruct? maybeFromMap(dynamic data) => data is Map
      ? VentasDiariasFechaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'cuentasDiarias': _cuentasDiarias?.map((e) => e.toMap()).toList(),
        'fecha': _fecha,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cuentasDiarias': serializeParam(
          _cuentasDiarias,
          ParamType.DataStruct,
          true,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static VentasDiariasFechaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      VentasDiariasFechaStruct(
        cuentasDiarias: deserializeStructParam<VentasDiariasStruct>(
          data['cuentasDiarias'],
          ParamType.DataStruct,
          true,
          structBuilder: VentasDiariasStruct.fromSerializableMap,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'VentasDiariasFechaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is VentasDiariasFechaStruct &&
        listEquality.equals(cuentasDiarias, other.cuentasDiarias) &&
        fecha == other.fecha;
  }

  @override
  int get hashCode => const ListEquality().hash([cuentasDiarias, fecha]);
}

VentasDiariasFechaStruct createVentasDiariasFechaStruct({
  DateTime? fecha,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VentasDiariasFechaStruct(
      fecha: fecha,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VentasDiariasFechaStruct? updateVentasDiariasFechaStruct(
  VentasDiariasFechaStruct? ventasDiariasFecha, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ventasDiariasFecha
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVentasDiariasFechaStructData(
  Map<String, dynamic> firestoreData,
  VentasDiariasFechaStruct? ventasDiariasFecha,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ventasDiariasFecha == null) {
    return;
  }
  if (ventasDiariasFecha.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ventasDiariasFecha.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ventasDiariasFechaData =
      getVentasDiariasFechaFirestoreData(ventasDiariasFecha, forFieldValue);
  final nestedData =
      ventasDiariasFechaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      ventasDiariasFecha.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVentasDiariasFechaFirestoreData(
  VentasDiariasFechaStruct? ventasDiariasFecha, [
  bool forFieldValue = false,
]) {
  if (ventasDiariasFecha == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ventasDiariasFecha.toMap());

  // Add any Firestore field values
  ventasDiariasFecha.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVentasDiariasFechaListFirestoreData(
  List<VentasDiariasFechaStruct>? ventasDiariasFechas,
) =>
    ventasDiariasFechas
        ?.map((e) => getVentasDiariasFechaFirestoreData(e, true))
        .toList() ??
    [];
