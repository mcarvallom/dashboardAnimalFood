import '../database.dart';

class GaleriaEmpresaTable extends SupabaseTable<GaleriaEmpresaRow> {
  @override
  String get tableName => 'galeriaEmpresa';

  @override
  GaleriaEmpresaRow createRow(Map<String, dynamic> data) =>
      GaleriaEmpresaRow(data);
}

class GaleriaEmpresaRow extends SupabaseDataRow {
  GaleriaEmpresaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GaleriaEmpresaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  String? get media => getField<String>('media');
  set media(String? value) => setField<String>('media', value);
}
