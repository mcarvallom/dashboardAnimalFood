import '../database.dart';

class MediodepagoTable extends SupabaseTable<MediodepagoRow> {
  @override
  String get tableName => 'mediodepago';

  @override
  MediodepagoRow createRow(Map<String, dynamic> data) => MediodepagoRow(data);
}

class MediodepagoRow extends SupabaseDataRow {
  MediodepagoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MediodepagoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);
}
