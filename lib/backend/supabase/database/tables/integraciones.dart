import '../database.dart';

class IntegracionesTable extends SupabaseTable<IntegracionesRow> {
  @override
  String get tableName => 'integraciones';

  @override
  IntegracionesRow createRow(Map<String, dynamic> data) =>
      IntegracionesRow(data);
}

class IntegracionesRow extends SupabaseDataRow {
  IntegracionesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IntegracionesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get apikey => getField<String>('apikey');
  set apikey(String? value) => setField<String>('apikey', value);

  int? get integracionFk => getField<int>('integracion_fk');
  set integracionFk(int? value) => setField<int>('integracion_fk', value);
}
