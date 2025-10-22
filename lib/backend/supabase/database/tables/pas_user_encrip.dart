import '../database.dart';

class PasUserEncripTable extends SupabaseTable<PasUserEncripRow> {
  @override
  String get tableName => 'pasUserEncrip';

  @override
  PasUserEncripRow createRow(Map<String, dynamic> data) =>
      PasUserEncripRow(data);
}

class PasUserEncripRow extends SupabaseDataRow {
  PasUserEncripRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PasUserEncripTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get hash => getField<String>('hash');
  set hash(String? value) => setField<String>('hash', value);

  String get user => getField<String>('user')!;
  set user(String value) => setField<String>('user', value);
}
