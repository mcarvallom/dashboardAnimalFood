import '../database.dart';

class ProductoTable extends SupabaseTable<ProductoRow> {
  @override
  String get tableName => 'Producto';

  @override
  ProductoRow createRow(Map<String, dynamic> data) => ProductoRow(data);
}

class ProductoRow extends SupabaseDataRow {
  ProductoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductoTable();

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  int get precio => getField<int>('precio')!;
  set precio(int value) => setField<int>('precio', value);

  String? get activo => getField<String>('activo');
  set activo(String? value) => setField<String>('activo', value);

  String? get controlStock => getField<String>('controlStock');
  set controlStock(String? value) => setField<String>('controlStock', value);

  double? get stock => getField<double>('stock');
  set stock(double? value) => setField<double>('stock', value);

  String? get imagen => getField<String>('imagen');
  set imagen(String? value) => setField<String>('imagen', value);

  bool? get isTop => getField<bool>('isTop');
  set isTop(bool? value) => setField<bool>('isTop', value);

  bool? get isDestacado => getField<bool>('isDestacado');
  set isDestacado(bool? value) => setField<bool>('isDestacado', value);

  bool? get quilpue => getField<bool>('quilpue');
  set quilpue(bool? value) => setField<bool>('quilpue', value);

  bool? get vxa => getField<bool>('vxa');
  set vxa(bool? value) => setField<bool>('vxa', value);

  bool? get vinadelmar => getField<bool>('vinadelmar');
  set vinadelmar(bool? value) => setField<bool>('vinadelmar', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  bool? get isDisponible => getField<bool>('isDisponible');
  set isDisponible(bool? value) => setField<bool>('isDisponible', value);

  String? get idProducto => getField<String>('idProducto');
  set idProducto(String? value) => setField<String>('idProducto', value);

  int? get rebaja => getField<int>('rebaja');
  set rebaja(int? value) => setField<int>('rebaja', value);

  String? get marca => getField<String>('marca');
  set marca(String? value) => setField<String>('marca', value);

  String? get indicacionescontraindicaciones =>
      getField<String>('indicacionescontraindicaciones');
  set indicacionescontraindicaciones(String? value) =>
      setField<String>('indicacionescontraindicaciones', value);

  String? get mododeuso => getField<String>('mododeuso');
  set mododeuso(String? value) => setField<String>('mododeuso', value);

  String? get dosificacion => getField<String>('dosificacion');
  set dosificacion(String? value) => setField<String>('dosificacion', value);

  String? get analisis => getField<String>('analisis');
  set analisis(String? value) => setField<String>('analisis', value);

  String? get ingredientes => getField<String>('ingredientes');
  set ingredientes(String? value) => setField<String>('ingredientes', value);

  String? get codigoBarras => getField<String>('codigoBarras');
  set codigoBarras(String? value) => setField<String>('codigoBarras', value);

  List<String> get etiqueta => getListField<String>('etiqueta');
  set etiqueta(List<String>? value) => setListField<String>('etiqueta', value);

  String? get precauciones => getField<String>('precauciones');
  set precauciones(String? value) => setField<String>('precauciones', value);

  int? get precioCompraConiva => getField<int>('precio_compra_coniva');
  set precioCompraConiva(int? value) =>
      setField<int>('precio_compra_coniva', value);

  int? get proveedor => getField<int>('proveedor');
  set proveedor(int? value) => setField<int>('proveedor', value);

  double? get porcentajeGananciaEsperada =>
      getField<double>('porcentajeGananciaEsperada');
  set porcentajeGananciaEsperada(double? value) =>
      setField<double>('porcentajeGananciaEsperada', value);

  int? get calificacion => getField<int>('calificacion');
  set calificacion(int? value) => setField<int>('calificacion', value);

  int? get integracion => getField<int>('integracion');
  set integracion(int? value) => setField<int>('integracion', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get sucursal => getField<String>('sucursal');
  set sucursal(String? value) => setField<String>('sucursal', value);
}
