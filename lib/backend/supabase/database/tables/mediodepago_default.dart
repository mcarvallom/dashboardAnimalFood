import '../database.dart';

class MediodepagoDefaultTable extends SupabaseTable<MediodepagoDefaultRow> {
  @override
  String get tableName => 'mediodepagoDefault';

  @override
  MediodepagoDefaultRow createRow(Map<String, dynamic> data) =>
      MediodepagoDefaultRow(data);
}

class MediodepagoDefaultRow extends SupabaseDataRow {
  MediodepagoDefaultRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MediodepagoDefaultTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);
}
