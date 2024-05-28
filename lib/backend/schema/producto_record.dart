import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductoRecord extends FirestoreRecord {
  ProductoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  bool hasStock() => _stock != null;

  // "rebaja" field.
  int? _rebaja;
  int get rebaja => _rebaja ?? 0;
  bool hasRebaja() => _rebaja != null;

  // "destacado" field.
  bool? _destacado;
  bool get destacado => _destacado ?? false;
  bool hasDestacado() => _destacado != null;

  // "categoria" field.
  List<String>? _categoria;
  List<String> get categoria => _categoria ?? const [];
  bool hasCategoria() => _categoria != null;

  // "Marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "etiqueta" field.
  List<String>? _etiqueta;
  List<String> get etiqueta => _etiqueta ?? const [];
  bool hasEtiqueta() => _etiqueta != null;

  // "recomendado" field.
  bool? _recomendado;
  bool get recomendado => _recomendado ?? false;
  bool hasRecomendado() => _recomendado != null;

  // "indicacionesycontraindicaciones" field.
  String? _indicacionesycontraindicaciones;
  String get indicacionesycontraindicaciones =>
      _indicacionesycontraindicaciones ?? '';
  bool hasIndicacionesycontraindicaciones() =>
      _indicacionesycontraindicaciones != null;

  // "mododeuso" field.
  String? _mododeuso;
  String get mododeuso => _mododeuso ?? '';
  bool hasMododeuso() => _mododeuso != null;

  // "dosificacion" field.
  String? _dosificacion;
  String get dosificacion => _dosificacion ?? '';
  bool hasDosificacion() => _dosificacion != null;

  // "precauciones" field.
  String? _precauciones;
  String get precauciones => _precauciones ?? '';
  bool hasPrecauciones() => _precauciones != null;

  // "analisis" field.
  String? _analisis;
  String get analisis => _analisis ?? '';
  bool hasAnalisis() => _analisis != null;

  // "ingredientes" field.
  String? _ingredientes;
  String get ingredientes => _ingredientes ?? '';
  bool hasIngredientes() => _ingredientes != null;

  // "avisarStock" field.
  List<DocumentReference>? _avisarStock;
  List<DocumentReference> get avisarStock => _avisarStock ?? const [];
  bool hasAvisarStock() => _avisarStock != null;

  // "prodAsociado" field.
  List<DocumentReference>? _prodAsociado;
  List<DocumentReference> get prodAsociado => _prodAsociado ?? const [];
  bool hasProdAsociado() => _prodAsociado != null;

  // "codigoBarras" field.
  String? _codigoBarras;
  String get codigoBarras => _codigoBarras ?? '';
  bool hasCodigoBarras() => _codigoBarras != null;

  // "tamanio" field.
  String? _tamanio;
  String get tamanio => _tamanio ?? '';
  bool hasTamanio() => _tamanio != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _stock = castToType<int>(snapshotData['stock']);
    _rebaja = castToType<int>(snapshotData['rebaja']);
    _destacado = snapshotData['destacado'] as bool?;
    _categoria = getDataList(snapshotData['categoria']);
    _marca = snapshotData['Marca'] as String?;
    _etiqueta = getDataList(snapshotData['etiqueta']);
    _recomendado = snapshotData['recomendado'] as bool?;
    _indicacionesycontraindicaciones =
        snapshotData['indicacionesycontraindicaciones'] as String?;
    _mododeuso = snapshotData['mododeuso'] as String?;
    _dosificacion = snapshotData['dosificacion'] as String?;
    _precauciones = snapshotData['precauciones'] as String?;
    _analisis = snapshotData['analisis'] as String?;
    _ingredientes = snapshotData['ingredientes'] as String?;
    _avisarStock = getDataList(snapshotData['avisarStock']);
    _prodAsociado = getDataList(snapshotData['prodAsociado']);
    _codigoBarras = snapshotData['codigoBarras'] as String?;
    _tamanio = snapshotData['tamanio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('producto');

  static Stream<ProductoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductoRecord.fromSnapshot(s));

  static Future<ProductoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductoRecord.fromSnapshot(s));

  static ProductoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductoRecordData({
  String? name,
  String? description,
  String? image,
  int? price,
  int? stock,
  int? rebaja,
  bool? destacado,
  String? marca,
  bool? recomendado,
  String? indicacionesycontraindicaciones,
  String? mododeuso,
  String? dosificacion,
  String? precauciones,
  String? analisis,
  String? ingredientes,
  String? codigoBarras,
  String? tamanio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'image': image,
      'price': price,
      'stock': stock,
      'rebaja': rebaja,
      'destacado': destacado,
      'Marca': marca,
      'recomendado': recomendado,
      'indicacionesycontraindicaciones': indicacionesycontraindicaciones,
      'mododeuso': mododeuso,
      'dosificacion': dosificacion,
      'precauciones': precauciones,
      'analisis': analisis,
      'ingredientes': ingredientes,
      'codigoBarras': codigoBarras,
      'tamanio': tamanio,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductoRecordDocumentEquality implements Equality<ProductoRecord> {
  const ProductoRecordDocumentEquality();

  @override
  bool equals(ProductoRecord? e1, ProductoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.price == e2?.price &&
        e1?.stock == e2?.stock &&
        e1?.rebaja == e2?.rebaja &&
        e1?.destacado == e2?.destacado &&
        listEquality.equals(e1?.categoria, e2?.categoria) &&
        e1?.marca == e2?.marca &&
        listEquality.equals(e1?.etiqueta, e2?.etiqueta) &&
        e1?.recomendado == e2?.recomendado &&
        e1?.indicacionesycontraindicaciones ==
            e2?.indicacionesycontraindicaciones &&
        e1?.mododeuso == e2?.mododeuso &&
        e1?.dosificacion == e2?.dosificacion &&
        e1?.precauciones == e2?.precauciones &&
        e1?.analisis == e2?.analisis &&
        e1?.ingredientes == e2?.ingredientes &&
        listEquality.equals(e1?.avisarStock, e2?.avisarStock) &&
        listEquality.equals(e1?.prodAsociado, e2?.prodAsociado) &&
        e1?.codigoBarras == e2?.codigoBarras &&
        e1?.tamanio == e2?.tamanio;
  }

  @override
  int hash(ProductoRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.image,
        e?.price,
        e?.stock,
        e?.rebaja,
        e?.destacado,
        e?.categoria,
        e?.marca,
        e?.etiqueta,
        e?.recomendado,
        e?.indicacionesycontraindicaciones,
        e?.mododeuso,
        e?.dosificacion,
        e?.precauciones,
        e?.analisis,
        e?.ingredientes,
        e?.avisarStock,
        e?.prodAsociado,
        e?.codigoBarras,
        e?.tamanio
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductoRecord;
}
