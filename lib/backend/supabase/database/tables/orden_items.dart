import '../database.dart';

class OrdenItemsTable extends SupabaseTable<OrdenItemsRow> {
  @override
  String get tableName => 'orden_items';

  @override
  OrdenItemsRow createRow(Map<String, dynamic> data) => OrdenItemsRow(data);
}

class OrdenItemsRow extends SupabaseDataRow {
  OrdenItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdenItemsTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double get cantidad => getField<double>('cantidad')!;
  set cantidad(double value) => setField<double>('cantidad', value);

  double get precio => getField<double>('precio')!;
  set precio(double value) => setField<double>('precio', value);

  double get subtotal => getField<double>('subtotal')!;
  set subtotal(double value) => setField<double>('subtotal', value);

  int? get mesa => getField<int>('mesa');
  set mesa(int? value) => setField<int>('mesa', value);

  String? get observacion => getField<String>('observacion');
  set observacion(String? value) => setField<String>('observacion', value);

  String? get nombreProducto => getField<String>('nombreProducto');
  set nombreProducto(String? value) =>
      setField<String>('nombreProducto', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get ordenId => getField<String>('orden_id');
  set ordenId(String? value) => setField<String>('orden_id', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  int? get numPosicion => getField<int>('num_posicion');
  set numPosicion(int? value) => setField<int>('num_posicion', value);
}
