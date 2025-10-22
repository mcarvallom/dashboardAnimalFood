import '../database.dart';

class OrdenTable extends SupabaseTable<OrdenRow> {
  @override
  String get tableName => 'Orden';

  @override
  OrdenRow createRow(Map<String, dynamic> data) => OrdenRow(data);
}

class OrdenRow extends SupabaseDataRow {
  OrdenRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdenTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double get monto => getField<double>('monto')!;
  set monto(double value) => setField<double>('monto', value);

  double get cantidad => getField<double>('cantidad')!;
  set cantidad(double value) => setField<double>('cantidad', value);

  double get precioEnvio => getField<double>('precioEnvio')!;
  set precioEnvio(double value) => setField<double>('precioEnvio', value);

  double? get descuento => getField<double>('descuento');
  set descuento(double? value) => setField<double>('descuento', value);

  String get estado => getField<String>('estado')!;
  set estado(String value) => setField<String>('estado', value);

  String get direccionEnvio => getField<String>('direccionEnvio')!;
  set direccionEnvio(String value) => setField<String>('direccionEnvio', value);

  String get mediodePago => getField<String>('mediodePago')!;
  set mediodePago(String value) => setField<String>('mediodePago', value);

  String? get observacion => getField<String>('observacion');
  set observacion(String? value) => setField<String>('observacion', value);

  double get numeroContacto => getField<double>('numeroContacto')!;
  set numeroContacto(double value) => setField<double>('numeroContacto', value);

  double? get numeroContactoSecundario =>
      getField<double>('numeroContactoSecundario');
  set numeroContactoSecundario(double? value) =>
      setField<double>('numeroContactoSecundario', value);

  String get tipoEntrega => getField<String>('tipoEntrega')!;
  set tipoEntrega(String value) => setField<String>('tipoEntrega', value);

  double? get codigoPedido => getField<double>('codigoPedido');
  set codigoPedido(double? value) => setField<double>('codigoPedido', value);

  double? get idPago => getField<double>('idPago');
  set idPago(double? value) => setField<double>('idPago', value);

  String? get imgTransferencia => getField<String>('img_transferencia');
  set imgTransferencia(String? value) =>
      setField<String>('img_transferencia', value);

  String get usuario => getField<String>('usuario')!;
  set usuario(String value) => setField<String>('usuario', value);

  String? get repartidor => getField<String>('repartidor');
  set repartidor(String? value) => setField<String>('repartidor', value);

  int? get mesa => getField<int>('mesa');
  set mesa(int? value) => setField<int>('mesa', value);

  DateTime? get horaCerrada => getField<DateTime>('horaCerrada');
  set horaCerrada(DateTime? value) => setField<DateTime>('horaCerrada', value);

  int? get cantidadPersonas => getField<int>('cantidadPersonas');
  set cantidadPersonas(int? value) => setField<int>('cantidadPersonas', value);

  String? get garzon => getField<String>('garzon');
  set garzon(String? value) => setField<String>('garzon', value);

  String? get tipoVenta => getField<String>('tipoVenta');
  set tipoVenta(String? value) => setField<String>('tipoVenta', value);

  String? get lugar => getField<String>('lugar');
  set lugar(String? value) => setField<String>('lugar', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  String? get timbreSii => getField<String>('timbreSii');
  set timbreSii(String? value) => setField<String>('timbreSii', value);

  int? get trackId => getField<int>('trackId');
  set trackId(int? value) => setField<int>('trackId', value);

  String? get pdf80mm => getField<String>('pdf80mm');
  set pdf80mm(String? value) => setField<String>('pdf80mm', value);

  String? get tipoDocumento => getField<String>('tipoDocumento');
  set tipoDocumento(String? value) => setField<String>('tipoDocumento', value);

  String? get xmlDTE => getField<String>('xmlDTE');
  set xmlDTE(String? value) => setField<String>('xmlDTE', value);

  List<dynamic> get detallesDTEjson => getListField<dynamic>('detallesDTEjson');
  set detallesDTEjson(List<dynamic>? value) =>
      setListField<dynamic>('detallesDTEjson', value);

  String? get pdfCarta => getField<String>('pdfCarta');
  set pdfCarta(String? value) => setField<String>('pdfCarta', value);

  String? get pdfCartaCedible => getField<String>('pdfCartaCedible');
  set pdfCartaCedible(String? value) =>
      setField<String>('pdfCartaCedible', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get tienda => getField<String>('tienda');
  set tienda(String? value) => setField<String>('tienda', value);

  DateTime? get fechaEntregaCliente =>
      getField<DateTime>('fecha_entrega_cliente');
  set fechaEntregaCliente(DateTime? value) =>
      setField<DateTime>('fecha_entrega_cliente', value);

  DateTime? get fechaEstimadaEntrega =>
      getField<DateTime>('fecha_estimada_entrega');
  set fechaEstimadaEntrega(DateTime? value) =>
      setField<DateTime>('fecha_estimada_entrega', value);

  String? get imgEvidenciaEntrega => getField<String>('img_evidencia_entrega');
  set imgEvidenciaEntrega(String? value) =>
      setField<String>('img_evidencia_entrega', value);
}
