import '../database.dart';

class VariacionTable extends SupabaseTable<VariacionRow> {
  @override
  String get tableName => 'variacion';

  @override
  VariacionRow createRow(Map<String, dynamic> data) => VariacionRow(data);
}

class VariacionRow extends SupabaseDataRow {
  VariacionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VariacionTable();

  String get idVariacion => getField<String>('idVariacion')!;
  set idVariacion(String value) => setField<String>('idVariacion', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get tamanio => getField<String>('tamanio');
  set tamanio(String? value) => setField<String>('tamanio', value);

  int? get stock => getField<int>('stock');
  set stock(int? value) => setField<int>('stock', value);

  int? get precio => getField<int>('precio');
  set precio(int? value) => setField<int>('precio', value);

  int? get rebaja => getField<int>('rebaja');
  set rebaja(int? value) => setField<int>('rebaja', value);

  String? get codigoBarras => getField<String>('codigoBarras');
  set codigoBarras(String? value) => setField<String>('codigoBarras', value);

  String? get idProducto => getField<String>('idProducto');
  set idProducto(String? value) => setField<String>('idProducto', value);
}
