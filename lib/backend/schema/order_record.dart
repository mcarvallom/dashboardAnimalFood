import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderRecord extends FirestoreRecord {
  OrderRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "direccionEnvio" field.
  String? _direccionEnvio;
  String get direccionEnvio => _direccionEnvio ?? '';
  bool hasDireccionEnvio() => _direccionEnvio != null;

  // "codigoPostal" field.
  int? _codigoPostal;
  int get codigoPostal => _codigoPostal ?? 0;
  bool hasCodigoPostal() => _codigoPostal != null;

  // "pais" field.
  String? _pais;
  String get pais => _pais ?? '';
  bool hasPais() => _pais != null;

  // "carrito" field.
  DocumentReference? _carrito;
  DocumentReference? get carrito => _carrito;
  bool hasCarrito() => _carrito != null;

  // "selectedItems" field.
  List<DocumentReference>? _selectedItems;
  List<DocumentReference> get selectedItems => _selectedItems ?? const [];
  bool hasSelectedItems() => _selectedItems != null;

  // "cliente" field.
  DocumentReference? _cliente;
  DocumentReference? get cliente => _cliente;
  bool hasCliente() => _cliente != null;

  // "mismoDatosEnvio" field.
  bool? _mismoDatosEnvio;
  bool get mismoDatosEnvio => _mismoDatosEnvio ?? false;
  bool hasMismoDatosEnvio() => _mismoDatosEnvio != null;

  // "sector" field.
  String? _sector;
  String get sector => _sector ?? '';
  bool hasSector() => _sector != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  bool hasRegion() => _region != null;

  // "nombrePagador" field.
  String? _nombrePagador;
  String get nombrePagador => _nombrePagador ?? '';
  bool hasNombrePagador() => _nombrePagador != null;

  // "direccionPagador" field.
  String? _direccionPagador;
  String get direccionPagador => _direccionPagador ?? '';
  bool hasDireccionPagador() => _direccionPagador != null;

  // "dvPagador" field.
  String? _dvPagador;
  String get dvPagador => _dvPagador ?? '';
  bool hasDvPagador() => _dvPagador != null;

  // "runPagador" field.
  int? _runPagador;
  int get runPagador => _runPagador ?? 0;
  bool hasRunPagador() => _runPagador != null;

  // "runEnvio" field.
  int? _runEnvio;
  int get runEnvio => _runEnvio ?? 0;
  bool hasRunEnvio() => _runEnvio != null;

  // "dvEnvio" field.
  String? _dvEnvio;
  String get dvEnvio => _dvEnvio ?? '';
  bool hasDvEnvio() => _dvEnvio != null;

  // "sectorPagador" field.
  String? _sectorPagador;
  String get sectorPagador => _sectorPagador ?? '';
  bool hasSectorPagador() => _sectorPagador != null;

  // "impuesto" field.
  int? _impuesto;
  int get impuesto => _impuesto ?? 0;
  bool hasImpuesto() => _impuesto != null;

  // "descuento" field.
  int? _descuento;
  int get descuento => _descuento ?? 0;
  bool hasDescuento() => _descuento != null;

  // "apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  bool hasApellido() => _apellido != null;

  // "apellidoPagador" field.
  String? _apellidoPagador;
  String get apellidoPagador => _apellidoPagador ?? '';
  bool hasApellidoPagador() => _apellidoPagador != null;

  // "mediodepago" field.
  String? _mediodepago;
  String get mediodepago => _mediodepago ?? '';
  bool hasMediodepago() => _mediodepago != null;

  // "repartidor" field.
  DocumentReference? _repartidor;
  DocumentReference? get repartidor => _repartidor;
  bool hasRepartidor() => _repartidor != null;

  // "codigoOrden" field.
  int? _codigoOrden;
  int get codigoOrden => _codigoOrden ?? 0;
  bool hasCodigoOrden() => _codigoOrden != null;

  // "idPago" field.
  String? _idPago;
  String get idPago => _idPago ?? '';
  bool hasIdPago() => _idPago != null;

  // "comprobantePagoTransferencia" field.
  String? _comprobantePagoTransferencia;
  String get comprobantePagoTransferencia =>
      _comprobantePagoTransferencia ?? '';
  bool hasComprobantePagoTransferencia() =>
      _comprobantePagoTransferencia != null;

  // "observacion" field.
  String? _observacion;
  String get observacion => _observacion ?? '';
  bool hasObservacion() => _observacion != null;

  // "numeroTelefono" field.
  int? _numeroTelefono;
  int get numeroTelefono => _numeroTelefono ?? 0;
  bool hasNumeroTelefono() => _numeroTelefono != null;

  // "numeroTelefonoEnvio" field.
  int? _numeroTelefonoEnvio;
  int get numeroTelefonoEnvio => _numeroTelefonoEnvio ?? 0;
  bool hasNumeroTelefonoEnvio() => _numeroTelefonoEnvio != null;

  // "tipoEntrega" field.
  String? _tipoEntrega;
  String get tipoEntrega => _tipoEntrega ?? '';
  bool hasTipoEntrega() => _tipoEntrega != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "emailEnvio" field.
  String? _emailEnvio;
  String get emailEnvio => _emailEnvio ?? '';
  bool hasEmailEnvio() => _emailEnvio != null;

  // "variacion" field.
  DocumentReference? _variacion;
  DocumentReference? get variacion => _variacion;
  bool hasVariacion() => _variacion != null;

  // "boletaOfactura" field.
  String? _boletaOfactura;
  String get boletaOfactura => _boletaOfactura ?? '';
  bool hasBoletaOfactura() => _boletaOfactura != null;

  // "diaEntrega" field.
  String? _diaEntrega;
  String get diaEntrega => _diaEntrega ?? '';
  bool hasDiaEntrega() => _diaEntrega != null;

  // "fechaEntregaCliente" field.
  DateTime? _fechaEntregaCliente;
  DateTime? get fechaEntregaCliente => _fechaEntregaCliente;
  bool hasFechaEntregaCliente() => _fechaEntregaCliente != null;

  // "isPagado" field.
  bool? _isPagado;
  bool get isPagado => _isPagado ?? false;
  bool hasIsPagado() => _isPagado != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _status = snapshotData['status'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _direccionEnvio = snapshotData['direccionEnvio'] as String?;
    _codigoPostal = castToType<int>(snapshotData['codigoPostal']);
    _pais = snapshotData['pais'] as String?;
    _carrito = snapshotData['carrito'] as DocumentReference?;
    _selectedItems = getDataList(snapshotData['selectedItems']);
    _cliente = snapshotData['cliente'] as DocumentReference?;
    _mismoDatosEnvio = snapshotData['mismoDatosEnvio'] as bool?;
    _sector = snapshotData['sector'] as String?;
    _region = snapshotData['region'] as String?;
    _nombrePagador = snapshotData['nombrePagador'] as String?;
    _direccionPagador = snapshotData['direccionPagador'] as String?;
    _dvPagador = snapshotData['dvPagador'] as String?;
    _runPagador = castToType<int>(snapshotData['runPagador']);
    _runEnvio = castToType<int>(snapshotData['runEnvio']);
    _dvEnvio = snapshotData['dvEnvio'] as String?;
    _sectorPagador = snapshotData['sectorPagador'] as String?;
    _impuesto = castToType<int>(snapshotData['impuesto']);
    _descuento = castToType<int>(snapshotData['descuento']);
    _apellido = snapshotData['apellido'] as String?;
    _apellidoPagador = snapshotData['apellidoPagador'] as String?;
    _mediodepago = snapshotData['mediodepago'] as String?;
    _repartidor = snapshotData['repartidor'] as DocumentReference?;
    _codigoOrden = castToType<int>(snapshotData['codigoOrden']);
    _idPago = snapshotData['idPago'] as String?;
    _comprobantePagoTransferencia =
        snapshotData['comprobantePagoTransferencia'] as String?;
    _observacion = snapshotData['observacion'] as String?;
    _numeroTelefono = castToType<int>(snapshotData['numeroTelefono']);
    _numeroTelefonoEnvio = castToType<int>(snapshotData['numeroTelefonoEnvio']);
    _tipoEntrega = snapshotData['tipoEntrega'] as String?;
    _email = snapshotData['email'] as String?;
    _emailEnvio = snapshotData['emailEnvio'] as String?;
    _variacion = snapshotData['variacion'] as DocumentReference?;
    _boletaOfactura = snapshotData['boletaOfactura'] as String?;
    _diaEntrega = snapshotData['diaEntrega'] as String?;
    _fechaEntregaCliente = snapshotData['fechaEntregaCliente'] as DateTime?;
    _isPagado = snapshotData['isPagado'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderRecord.fromSnapshot(s));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderRecord.fromSnapshot(s));

  static OrderRecord fromSnapshot(DocumentSnapshot snapshot) => OrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderRecordData({
  String? name,
  double? amount,
  String? status,
  DateTime? createdAt,
  String? direccionEnvio,
  int? codigoPostal,
  String? pais,
  DocumentReference? carrito,
  DocumentReference? cliente,
  bool? mismoDatosEnvio,
  String? sector,
  String? region,
  String? nombrePagador,
  String? direccionPagador,
  String? dvPagador,
  int? runPagador,
  int? runEnvio,
  String? dvEnvio,
  String? sectorPagador,
  int? impuesto,
  int? descuento,
  String? apellido,
  String? apellidoPagador,
  String? mediodepago,
  DocumentReference? repartidor,
  int? codigoOrden,
  String? idPago,
  String? comprobantePagoTransferencia,
  String? observacion,
  int? numeroTelefono,
  int? numeroTelefonoEnvio,
  String? tipoEntrega,
  String? email,
  String? emailEnvio,
  DocumentReference? variacion,
  String? boletaOfactura,
  String? diaEntrega,
  DateTime? fechaEntregaCliente,
  bool? isPagado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'amount': amount,
      'status': status,
      'created_at': createdAt,
      'direccionEnvio': direccionEnvio,
      'codigoPostal': codigoPostal,
      'pais': pais,
      'carrito': carrito,
      'cliente': cliente,
      'mismoDatosEnvio': mismoDatosEnvio,
      'sector': sector,
      'region': region,
      'nombrePagador': nombrePagador,
      'direccionPagador': direccionPagador,
      'dvPagador': dvPagador,
      'runPagador': runPagador,
      'runEnvio': runEnvio,
      'dvEnvio': dvEnvio,
      'sectorPagador': sectorPagador,
      'impuesto': impuesto,
      'descuento': descuento,
      'apellido': apellido,
      'apellidoPagador': apellidoPagador,
      'mediodepago': mediodepago,
      'repartidor': repartidor,
      'codigoOrden': codigoOrden,
      'idPago': idPago,
      'comprobantePagoTransferencia': comprobantePagoTransferencia,
      'observacion': observacion,
      'numeroTelefono': numeroTelefono,
      'numeroTelefonoEnvio': numeroTelefonoEnvio,
      'tipoEntrega': tipoEntrega,
      'email': email,
      'emailEnvio': emailEnvio,
      'variacion': variacion,
      'boletaOfactura': boletaOfactura,
      'diaEntrega': diaEntrega,
      'fechaEntregaCliente': fechaEntregaCliente,
      'isPagado': isPagado,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderRecordDocumentEquality implements Equality<OrderRecord> {
  const OrderRecordDocumentEquality();

  @override
  bool equals(OrderRecord? e1, OrderRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.amount == e2?.amount &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt &&
        e1?.direccionEnvio == e2?.direccionEnvio &&
        e1?.codigoPostal == e2?.codigoPostal &&
        e1?.pais == e2?.pais &&
        e1?.carrito == e2?.carrito &&
        listEquality.equals(e1?.selectedItems, e2?.selectedItems) &&
        e1?.cliente == e2?.cliente &&
        e1?.mismoDatosEnvio == e2?.mismoDatosEnvio &&
        e1?.sector == e2?.sector &&
        e1?.region == e2?.region &&
        e1?.nombrePagador == e2?.nombrePagador &&
        e1?.direccionPagador == e2?.direccionPagador &&
        e1?.dvPagador == e2?.dvPagador &&
        e1?.runPagador == e2?.runPagador &&
        e1?.runEnvio == e2?.runEnvio &&
        e1?.dvEnvio == e2?.dvEnvio &&
        e1?.sectorPagador == e2?.sectorPagador &&
        e1?.impuesto == e2?.impuesto &&
        e1?.descuento == e2?.descuento &&
        e1?.apellido == e2?.apellido &&
        e1?.apellidoPagador == e2?.apellidoPagador &&
        e1?.mediodepago == e2?.mediodepago &&
        e1?.repartidor == e2?.repartidor &&
        e1?.codigoOrden == e2?.codigoOrden &&
        e1?.idPago == e2?.idPago &&
        e1?.comprobantePagoTransferencia == e2?.comprobantePagoTransferencia &&
        e1?.observacion == e2?.observacion &&
        e1?.numeroTelefono == e2?.numeroTelefono &&
        e1?.numeroTelefonoEnvio == e2?.numeroTelefonoEnvio &&
        e1?.tipoEntrega == e2?.tipoEntrega &&
        e1?.email == e2?.email &&
        e1?.emailEnvio == e2?.emailEnvio &&
        e1?.variacion == e2?.variacion &&
        e1?.boletaOfactura == e2?.boletaOfactura &&
        e1?.diaEntrega == e2?.diaEntrega &&
        e1?.fechaEntregaCliente == e2?.fechaEntregaCliente &&
        e1?.isPagado == e2?.isPagado;
  }

  @override
  int hash(OrderRecord? e) => const ListEquality().hash([
        e?.name,
        e?.amount,
        e?.status,
        e?.createdAt,
        e?.direccionEnvio,
        e?.codigoPostal,
        e?.pais,
        e?.carrito,
        e?.selectedItems,
        e?.cliente,
        e?.mismoDatosEnvio,
        e?.sector,
        e?.region,
        e?.nombrePagador,
        e?.direccionPagador,
        e?.dvPagador,
        e?.runPagador,
        e?.runEnvio,
        e?.dvEnvio,
        e?.sectorPagador,
        e?.impuesto,
        e?.descuento,
        e?.apellido,
        e?.apellidoPagador,
        e?.mediodepago,
        e?.repartidor,
        e?.codigoOrden,
        e?.idPago,
        e?.comprobantePagoTransferencia,
        e?.observacion,
        e?.numeroTelefono,
        e?.numeroTelefonoEnvio,
        e?.tipoEntrega,
        e?.email,
        e?.emailEnvio,
        e?.variacion,
        e?.boletaOfactura,
        e?.diaEntrega,
        e?.fechaEntregaCliente,
        e?.isPagado
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderRecord;
}
