// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BlogStruct extends FFFirebaseStruct {
  BlogStruct({
    DateTime? createdAt,
    String? titulo,
    String? cuerpo,
    String? imagen,
    String? cuerpo2,
    String? imagen2,
    String? cuerpo3,
    String? imagen3,
    String? cuerpo4,
    String? imagen4,
    String? cuerpo5,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _createdAt = createdAt,
        _titulo = titulo,
        _cuerpo = cuerpo,
        _imagen = imagen,
        _cuerpo2 = cuerpo2,
        _imagen2 = imagen2,
        _cuerpo3 = cuerpo3,
        _imagen3 = imagen3,
        _cuerpo4 = cuerpo4,
        _imagen4 = imagen4,
        _cuerpo5 = cuerpo5,
        super(firestoreUtilData);

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  set titulo(String? val) => _titulo = val;
  bool hasTitulo() => _titulo != null;

  // "cuerpo" field.
  String? _cuerpo;
  String get cuerpo => _cuerpo ?? '';
  set cuerpo(String? val) => _cuerpo = val;
  bool hasCuerpo() => _cuerpo != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  set imagen(String? val) => _imagen = val;
  bool hasImagen() => _imagen != null;

  // "cuerpo2" field.
  String? _cuerpo2;
  String get cuerpo2 => _cuerpo2 ?? '';
  set cuerpo2(String? val) => _cuerpo2 = val;
  bool hasCuerpo2() => _cuerpo2 != null;

  // "imagen2" field.
  String? _imagen2;
  String get imagen2 => _imagen2 ?? '';
  set imagen2(String? val) => _imagen2 = val;
  bool hasImagen2() => _imagen2 != null;

  // "cuerpo3" field.
  String? _cuerpo3;
  String get cuerpo3 => _cuerpo3 ?? '';
  set cuerpo3(String? val) => _cuerpo3 = val;
  bool hasCuerpo3() => _cuerpo3 != null;

  // "imagen3" field.
  String? _imagen3;
  String get imagen3 => _imagen3 ?? '';
  set imagen3(String? val) => _imagen3 = val;
  bool hasImagen3() => _imagen3 != null;

  // "cuerpo4" field.
  String? _cuerpo4;
  String get cuerpo4 => _cuerpo4 ?? '';
  set cuerpo4(String? val) => _cuerpo4 = val;
  bool hasCuerpo4() => _cuerpo4 != null;

  // "imagen4" field.
  String? _imagen4;
  String get imagen4 => _imagen4 ?? '';
  set imagen4(String? val) => _imagen4 = val;
  bool hasImagen4() => _imagen4 != null;

  // "cuerpo5" field.
  String? _cuerpo5;
  String get cuerpo5 => _cuerpo5 ?? '';
  set cuerpo5(String? val) => _cuerpo5 = val;
  bool hasCuerpo5() => _cuerpo5 != null;

  static BlogStruct fromMap(Map<String, dynamic> data) => BlogStruct(
        createdAt: data['created_at'] as DateTime?,
        titulo: data['titulo'] as String?,
        cuerpo: data['cuerpo'] as String?,
        imagen: data['imagen'] as String?,
        cuerpo2: data['cuerpo2'] as String?,
        imagen2: data['imagen2'] as String?,
        cuerpo3: data['cuerpo3'] as String?,
        imagen3: data['imagen3'] as String?,
        cuerpo4: data['cuerpo4'] as String?,
        imagen4: data['imagen4'] as String?,
        cuerpo5: data['cuerpo5'] as String?,
      );

  static BlogStruct? maybeFromMap(dynamic data) =>
      data is Map ? BlogStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'created_at': _createdAt,
        'titulo': _titulo,
        'cuerpo': _cuerpo,
        'imagen': _imagen,
        'cuerpo2': _cuerpo2,
        'imagen2': _imagen2,
        'cuerpo3': _cuerpo3,
        'imagen3': _imagen3,
        'cuerpo4': _cuerpo4,
        'imagen4': _imagen4,
        'cuerpo5': _cuerpo5,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'titulo': serializeParam(
          _titulo,
          ParamType.String,
        ),
        'cuerpo': serializeParam(
          _cuerpo,
          ParamType.String,
        ),
        'imagen': serializeParam(
          _imagen,
          ParamType.String,
        ),
        'cuerpo2': serializeParam(
          _cuerpo2,
          ParamType.String,
        ),
        'imagen2': serializeParam(
          _imagen2,
          ParamType.String,
        ),
        'cuerpo3': serializeParam(
          _cuerpo3,
          ParamType.String,
        ),
        'imagen3': serializeParam(
          _imagen3,
          ParamType.String,
        ),
        'cuerpo4': serializeParam(
          _cuerpo4,
          ParamType.String,
        ),
        'imagen4': serializeParam(
          _imagen4,
          ParamType.String,
        ),
        'cuerpo5': serializeParam(
          _cuerpo5,
          ParamType.String,
        ),
      }.withoutNulls;

  static BlogStruct fromSerializableMap(Map<String, dynamic> data) =>
      BlogStruct(
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
        titulo: deserializeParam(
          data['titulo'],
          ParamType.String,
          false,
        ),
        cuerpo: deserializeParam(
          data['cuerpo'],
          ParamType.String,
          false,
        ),
        imagen: deserializeParam(
          data['imagen'],
          ParamType.String,
          false,
        ),
        cuerpo2: deserializeParam(
          data['cuerpo2'],
          ParamType.String,
          false,
        ),
        imagen2: deserializeParam(
          data['imagen2'],
          ParamType.String,
          false,
        ),
        cuerpo3: deserializeParam(
          data['cuerpo3'],
          ParamType.String,
          false,
        ),
        imagen3: deserializeParam(
          data['imagen3'],
          ParamType.String,
          false,
        ),
        cuerpo4: deserializeParam(
          data['cuerpo4'],
          ParamType.String,
          false,
        ),
        imagen4: deserializeParam(
          data['imagen4'],
          ParamType.String,
          false,
        ),
        cuerpo5: deserializeParam(
          data['cuerpo5'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BlogStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BlogStruct &&
        createdAt == other.createdAt &&
        titulo == other.titulo &&
        cuerpo == other.cuerpo &&
        imagen == other.imagen &&
        cuerpo2 == other.cuerpo2 &&
        imagen2 == other.imagen2 &&
        cuerpo3 == other.cuerpo3 &&
        imagen3 == other.imagen3 &&
        cuerpo4 == other.cuerpo4 &&
        imagen4 == other.imagen4 &&
        cuerpo5 == other.cuerpo5;
  }

  @override
  int get hashCode => const ListEquality().hash([
        createdAt,
        titulo,
        cuerpo,
        imagen,
        cuerpo2,
        imagen2,
        cuerpo3,
        imagen3,
        cuerpo4,
        imagen4,
        cuerpo5
      ]);
}

BlogStruct createBlogStruct({
  DateTime? createdAt,
  String? titulo,
  String? cuerpo,
  String? imagen,
  String? cuerpo2,
  String? imagen2,
  String? cuerpo3,
  String? imagen3,
  String? cuerpo4,
  String? imagen4,
  String? cuerpo5,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BlogStruct(
      createdAt: createdAt,
      titulo: titulo,
      cuerpo: cuerpo,
      imagen: imagen,
      cuerpo2: cuerpo2,
      imagen2: imagen2,
      cuerpo3: cuerpo3,
      imagen3: imagen3,
      cuerpo4: cuerpo4,
      imagen4: imagen4,
      cuerpo5: cuerpo5,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BlogStruct? updateBlogStruct(
  BlogStruct? blog, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    blog
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBlogStructData(
  Map<String, dynamic> firestoreData,
  BlogStruct? blog,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (blog == null) {
    return;
  }
  if (blog.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && blog.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final blogData = getBlogFirestoreData(blog, forFieldValue);
  final nestedData = blogData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = blog.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBlogFirestoreData(
  BlogStruct? blog, [
  bool forFieldValue = false,
]) {
  if (blog == null) {
    return {};
  }
  final firestoreData = mapToFirestore(blog.toMap());

  // Add any Firestore field values
  blog.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBlogListFirestoreData(
  List<BlogStruct>? blogs,
) =>
    blogs?.map((e) => getBlogFirestoreData(e, true)).toList() ?? [];
