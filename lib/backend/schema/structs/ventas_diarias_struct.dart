// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VentasDiariasStruct extends FFFirebaseStruct {
  VentasDiariasStruct({
    String? tienda,
    DateTime? fecha,
    int? efectivo,
    int? maquina,
    int? gastos,
    String? gastosDetalle,
    int? peaje,
    int? petroleo,
    int? codigoGetnet,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tienda = tienda,
        _fecha = fecha,
        _efectivo = efectivo,
        _maquina = maquina,
        _gastos = gastos,
        _gastosDetalle = gastosDetalle,
        _peaje = peaje,
        _petroleo = petroleo,
        _codigoGetnet = codigoGetnet,
        super(firestoreUtilData);

  // "tienda" field.
  String? _tienda;
  String get tienda => _tienda ?? '';
  set tienda(String? val) => _tienda = val;
  bool hasTienda() => _tienda != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  set fecha(DateTime? val) => _fecha = val;
  bool hasFecha() => _fecha != null;

  // "efectivo" field.
  int? _efectivo;
  int get efectivo => _efectivo ?? 0;
  set efectivo(int? val) => _efectivo = val;
  void incrementEfectivo(int amount) => _efectivo = efectivo + amount;
  bool hasEfectivo() => _efectivo != null;

  // "maquina" field.
  int? _maquina;
  int get maquina => _maquina ?? 0;
  set maquina(int? val) => _maquina = val;
  void incrementMaquina(int amount) => _maquina = maquina + amount;
  bool hasMaquina() => _maquina != null;

  // "gastos" field.
  int? _gastos;
  int get gastos => _gastos ?? 0;
  set gastos(int? val) => _gastos = val;
  void incrementGastos(int amount) => _gastos = gastos + amount;
  bool hasGastos() => _gastos != null;

  // "gastosDetalle" field.
  String? _gastosDetalle;
  String get gastosDetalle => _gastosDetalle ?? '';
  set gastosDetalle(String? val) => _gastosDetalle = val;
  bool hasGastosDetalle() => _gastosDetalle != null;

  // "peaje" field.
  int? _peaje;
  int get peaje => _peaje ?? 0;
  set peaje(int? val) => _peaje = val;
  void incrementPeaje(int amount) => _peaje = peaje + amount;
  bool hasPeaje() => _peaje != null;

  // "petroleo" field.
  int? _petroleo;
  int get petroleo => _petroleo ?? 0;
  set petroleo(int? val) => _petroleo = val;
  void incrementPetroleo(int amount) => _petroleo = petroleo + amount;
  bool hasPetroleo() => _petroleo != null;

  // "codigoGetnet" field.
  int? _codigoGetnet;
  int get codigoGetnet => _codigoGetnet ?? 0;
  set codigoGetnet(int? val) => _codigoGetnet = val;
  void incrementCodigoGetnet(int amount) =>
      _codigoGetnet = codigoGetnet + amount;
  bool hasCodigoGetnet() => _codigoGetnet != null;

  static VentasDiariasStruct fromMap(Map<String, dynamic> data) =>
      VentasDiariasStruct(
        tienda: data['tienda'] as String?,
        fecha: data['fecha'] as DateTime?,
        efectivo: castToType<int>(data['efectivo']),
        maquina: castToType<int>(data['maquina']),
        gastos: castToType<int>(data['gastos']),
        gastosDetalle: data['gastosDetalle'] as String?,
        peaje: castToType<int>(data['peaje']),
        petroleo: castToType<int>(data['petroleo']),
        codigoGetnet: castToType<int>(data['codigoGetnet']),
      );

  static VentasDiariasStruct? maybeFromMap(dynamic data) => data is Map
      ? VentasDiariasStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'tienda': _tienda,
        'fecha': _fecha,
        'efectivo': _efectivo,
        'maquina': _maquina,
        'gastos': _gastos,
        'gastosDetalle': _gastosDetalle,
        'peaje': _peaje,
        'petroleo': _petroleo,
        'codigoGetnet': _codigoGetnet,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tienda': serializeParam(
          _tienda,
          ParamType.String,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.DateTime,
        ),
        'efectivo': serializeParam(
          _efectivo,
          ParamType.int,
        ),
        'maquina': serializeParam(
          _maquina,
          ParamType.int,
        ),
        'gastos': serializeParam(
          _gastos,
          ParamType.int,
        ),
        'gastosDetalle': serializeParam(
          _gastosDetalle,
          ParamType.String,
        ),
        'peaje': serializeParam(
          _peaje,
          ParamType.int,
        ),
        'petroleo': serializeParam(
          _petroleo,
          ParamType.int,
        ),
        'codigoGetnet': serializeParam(
          _codigoGetnet,
          ParamType.int,
        ),
      }.withoutNulls;

  static VentasDiariasStruct fromSerializableMap(Map<String, dynamic> data) =>
      VentasDiariasStruct(
        tienda: deserializeParam(
          data['tienda'],
          ParamType.String,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.DateTime,
          false,
        ),
        efectivo: deserializeParam(
          data['efectivo'],
          ParamType.int,
          false,
        ),
        maquina: deserializeParam(
          data['maquina'],
          ParamType.int,
          false,
        ),
        gastos: deserializeParam(
          data['gastos'],
          ParamType.int,
          false,
        ),
        gastosDetalle: deserializeParam(
          data['gastosDetalle'],
          ParamType.String,
          false,
        ),
        peaje: deserializeParam(
          data['peaje'],
          ParamType.int,
          false,
        ),
        petroleo: deserializeParam(
          data['petroleo'],
          ParamType.int,
          false,
        ),
        codigoGetnet: deserializeParam(
          data['codigoGetnet'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'VentasDiariasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VentasDiariasStruct &&
        tienda == other.tienda &&
        fecha == other.fecha &&
        efectivo == other.efectivo &&
        maquina == other.maquina &&
        gastos == other.gastos &&
        gastosDetalle == other.gastosDetalle &&
        peaje == other.peaje &&
        petroleo == other.petroleo &&
        codigoGetnet == other.codigoGetnet;
  }

  @override
  int get hashCode => const ListEquality().hash([
        tienda,
        fecha,
        efectivo,
        maquina,
        gastos,
        gastosDetalle,
        peaje,
        petroleo,
        codigoGetnet
      ]);
}

VentasDiariasStruct createVentasDiariasStruct({
  String? tienda,
  DateTime? fecha,
  int? efectivo,
  int? maquina,
  int? gastos,
  String? gastosDetalle,
  int? peaje,
  int? petroleo,
  int? codigoGetnet,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VentasDiariasStruct(
      tienda: tienda,
      fecha: fecha,
      efectivo: efectivo,
      maquina: maquina,
      gastos: gastos,
      gastosDetalle: gastosDetalle,
      peaje: peaje,
      petroleo: petroleo,
      codigoGetnet: codigoGetnet,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VentasDiariasStruct? updateVentasDiariasStruct(
  VentasDiariasStruct? ventasDiarias, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ventasDiarias
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVentasDiariasStructData(
  Map<String, dynamic> firestoreData,
  VentasDiariasStruct? ventasDiarias,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ventasDiarias == null) {
    return;
  }
  if (ventasDiarias.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ventasDiarias.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ventasDiariasData =
      getVentasDiariasFirestoreData(ventasDiarias, forFieldValue);
  final nestedData =
      ventasDiariasData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ventasDiarias.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVentasDiariasFirestoreData(
  VentasDiariasStruct? ventasDiarias, [
  bool forFieldValue = false,
]) {
  if (ventasDiarias == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ventasDiarias.toMap());

  // Add any Firestore field values
  ventasDiarias.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVentasDiariasListFirestoreData(
  List<VentasDiariasStruct>? ventasDiariass,
) =>
    ventasDiariass
        ?.map((e) => getVentasDiariasFirestoreData(e, true))
        .toList() ??
    [];
