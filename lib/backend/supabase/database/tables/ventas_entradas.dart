import '../database.dart';

class VentasEntradasTable extends SupabaseTable<VentasEntradasRow> {
  @override
  String get tableName => 'ventas_entradas';

  @override
  VentasEntradasRow createRow(Map<String, dynamic> data) =>
      VentasEntradasRow(data);
}

class VentasEntradasRow extends SupabaseDataRow {
  VentasEntradasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VentasEntradasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get monto => getField<int>('monto');
  set monto(int? value) => setField<int>('monto', value);

  String? get correo => getField<String>('correo');
  set correo(String? value) => setField<String>('correo', value);

  String? get nombreCliente => getField<String>('nombre_cliente');
  set nombreCliente(String? value) => setField<String>('nombre_cliente', value);

  int? get evento => getField<int>('evento');
  set evento(int? value) => setField<int>('evento', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);
}
