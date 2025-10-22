import '../database.dart';

class CarritoItemsTable extends SupabaseTable<CarritoItemsRow> {
  @override
  String get tableName => 'carrito_items';

  @override
  CarritoItemsRow createRow(Map<String, dynamic> data) => CarritoItemsRow(data);
}

class CarritoItemsRow extends SupabaseDataRow {
  CarritoItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CarritoItemsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double get cantidad => getField<double>('cantidad')!;
  set cantidad(double value) => setField<double>('cantidad', value);

  double get subtotal => getField<double>('subtotal')!;
  set subtotal(double value) => setField<double>('subtotal', value);

  int? get cartId => getField<int>('cart_id');
  set cartId(int? value) => setField<int>('cart_id', value);

  int? get mesa => getField<int>('mesa');
  set mesa(int? value) => setField<int>('mesa', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);
}
