import '../database.dart';

class CarpetasTable extends SupabaseTable<CarpetasRow> {
  @override
  String get tableName => 'carpetas';

  @override
  CarpetasRow createRow(Map<String, dynamic> data) => CarpetasRow(data);
}

class CarpetasRow extends SupabaseDataRow {
  CarpetasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CarpetasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);
}
