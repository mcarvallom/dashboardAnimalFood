import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class MarcaRecord extends FirestoreRecord {
  MarcaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "nombreMarca" field.
  String? _nombreMarca;
  String get nombreMarca => _nombreMarca ?? '';
  bool hasNombreMarca() => _nombreMarca != null;

  // "destacado" field.
  bool? _destacado;
  bool get destacado => _destacado ?? false;
  bool hasDestacado() => _destacado != null;

  // "carrusel" field.
  List<String>? _carrusel;
  List<String> get carrusel => _carrusel ?? const [];
  bool hasCarrusel() => _carrusel != null;

  // "imagenDetalle" field.
  String? _imagenDetalle;
  String get imagenDetalle => _imagenDetalle ?? '';
  bool hasImagenDetalle() => _imagenDetalle != null;

  // "sobrelaMarca" field.
  String? _sobrelaMarca;
  String get sobrelaMarca => _sobrelaMarca ?? '';
  bool hasSobrelaMarca() => _sobrelaMarca != null;

  // "categoria" field.
  List<String>? _categoria;
  List<String> get categoria => _categoria ?? const [];
  bool hasCategoria() => _categoria != null;

  void _initializeFields() {
    _imagen = snapshotData['imagen'] as String?;
    _nombreMarca = snapshotData['nombreMarca'] as String?;
    _destacado = snapshotData['destacado'] as bool?;
    _carrusel = getDataList(snapshotData['carrusel']);
    _imagenDetalle = snapshotData['imagenDetalle'] as String?;
    _sobrelaMarca = snapshotData['sobrelaMarca'] as String?;
    _categoria = getDataList(snapshotData['categoria']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('marca');

  static Stream<MarcaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MarcaRecord.fromSnapshot(s));

  static Future<MarcaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MarcaRecord.fromSnapshot(s));

  static MarcaRecord fromSnapshot(DocumentSnapshot snapshot) => MarcaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MarcaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MarcaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MarcaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MarcaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMarcaRecordData({
  String? imagen,
  String? nombreMarca,
  bool? destacado,
  String? imagenDetalle,
  String? sobrelaMarca,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imagen': imagen,
      'nombreMarca': nombreMarca,
      'destacado': destacado,
      'imagenDetalle': imagenDetalle,
      'sobrelaMarca': sobrelaMarca,
    }.withoutNulls,
  );

  return firestoreData;
}

class MarcaRecordDocumentEquality implements Equality<MarcaRecord> {
  const MarcaRecordDocumentEquality();

  @override
  bool equals(MarcaRecord? e1, MarcaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.imagen == e2?.imagen &&
        e1?.nombreMarca == e2?.nombreMarca &&
        e1?.destacado == e2?.destacado &&
        listEquality.equals(e1?.carrusel, e2?.carrusel) &&
        e1?.imagenDetalle == e2?.imagenDetalle &&
        e1?.sobrelaMarca == e2?.sobrelaMarca &&
        listEquality.equals(e1?.categoria, e2?.categoria);
  }

  @override
  int hash(MarcaRecord? e) => const ListEquality().hash([
        e?.imagen,
        e?.nombreMarca,
        e?.destacado,
        e?.carrusel,
        e?.imagenDetalle,
        e?.sobrelaMarca,
        e?.categoria
      ]);

  @override
  bool isValidKey(Object? o) => o is MarcaRecord;
}
