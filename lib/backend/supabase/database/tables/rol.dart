import '../database.dart';

class RolTable extends SupabaseTable<RolRow> {
  @override
  String get tableName => 'rol';

  @override
  RolRow createRow(Map<String, dynamic> data) => RolRow(data);
}

class RolRow extends SupabaseDataRow {
  RolRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RolTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get rol => getField<String>('rol');
  set rol(String? value) => setField<String>('rol', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);
}
