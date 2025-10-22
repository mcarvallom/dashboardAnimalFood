import '../database.dart';

class TipoEmpresaTable extends SupabaseTable<TipoEmpresaRow> {
  @override
  String get tableName => 'tipo_empresa';

  @override
  TipoEmpresaRow createRow(Map<String, dynamic> data) => TipoEmpresaRow(data);
}

class TipoEmpresaRow extends SupabaseDataRow {
  TipoEmpresaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TipoEmpresaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nombreTipo => getField<String>('nombre_tipo');
  set nombreTipo(String? value) => setField<String>('nombre_tipo', value);
}
