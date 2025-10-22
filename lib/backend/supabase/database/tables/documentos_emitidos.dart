import '../database.dart';

class DocumentosEmitidosTable extends SupabaseTable<DocumentosEmitidosRow> {
  @override
  String get tableName => 'documentosEmitidos';

  @override
  DocumentosEmitidosRow createRow(Map<String, dynamic> data) =>
      DocumentosEmitidosRow(data);
}

class DocumentosEmitidosRow extends SupabaseDataRow {
  DocumentosEmitidosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DocumentosEmitidosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get url => getField<String>('url')!;
  set url(String value) => setField<String>('url', value);

  double? get monto => getField<double>('monto');
  set monto(double? value) => setField<double>('monto', value);

  String? get tipoDocumento => getField<String>('tipoDocumento');
  set tipoDocumento(String? value) => setField<String>('tipoDocumento', value);

  String get usuario => getField<String>('usuario')!;
  set usuario(String value) => setField<String>('usuario', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  dynamic get detalle => getField<dynamic>('detalle');
  set detalle(dynamic value) => setField<dynamic>('detalle', value);

  int? get tipoDTE => getField<int>('tipoDTE');
  set tipoDTE(int? value) => setField<int>('tipoDTE', value);

  dynamic get jsonCliente => getField<dynamic>('jsonCliente');
  set jsonCliente(dynamic value) => setField<dynamic>('jsonCliente', value);

  double? get folio => getField<double>('folio');
  set folio(double? value) => setField<double>('folio', value);

  String? get sucursal => getField<String>('sucursal');
  set sucursal(String? value) => setField<String>('sucursal', value);
}
