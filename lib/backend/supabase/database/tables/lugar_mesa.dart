import '../database.dart';

class LugarMesaTable extends SupabaseTable<LugarMesaRow> {
  @override
  String get tableName => 'lugarMesa';

  @override
  LugarMesaRow createRow(Map<String, dynamic> data) => LugarMesaRow(data);
}

class LugarMesaRow extends SupabaseDataRow {
  LugarMesaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LugarMesaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get lugarMesa => getField<String>('lugarMesa');
  set lugarMesa(String? value) => setField<String>('lugarMesa', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  String? get sucursal => getField<String>('sucursal');
  set sucursal(String? value) => setField<String>('sucursal', value);
}
