import '../database.dart';

class ProductosmasvendidosmesTable
    extends SupabaseTable<ProductosmasvendidosmesRow> {
  @override
  String get tableName => 'productosmasvendidosmes';

  @override
  ProductosmasvendidosmesRow createRow(Map<String, dynamic> data) =>
      ProductosmasvendidosmesRow(data);
}

class ProductosmasvendidosmesRow extends SupabaseDataRow {
  ProductosmasvendidosmesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductosmasvendidosmesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get cantidadVendida => getField<int>('cantidad_vendida');
  set cantidadVendida(int? value) => setField<int>('cantidad_vendida', value);

  double? get porcentajeVentas => getField<double>('porcentaje_ventas');
  set porcentajeVentas(double? value) =>
      setField<double>('porcentaje_ventas', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  int? get ganancia => getField<int>('ganancia');
  set ganancia(int? value) => setField<int>('ganancia', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get sucursal => getField<String>('sucursal');
  set sucursal(String? value) => setField<String>('sucursal', value);
}
