import '../database.dart';

class IntegracionesDefaultTable extends SupabaseTable<IntegracionesDefaultRow> {
  @override
  String get tableName => 'integraciones_default';

  @override
  IntegracionesDefaultRow createRow(Map<String, dynamic> data) =>
      IntegracionesDefaultRow(data);
}

class IntegracionesDefaultRow extends SupabaseDataRow {
  IntegracionesDefaultRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IntegracionesDefaultTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);
}
