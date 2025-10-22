import '../database.dart';

class PasareladepagoDefaultTable
    extends SupabaseTable<PasareladepagoDefaultRow> {
  @override
  String get tableName => 'pasareladepago_default';

  @override
  PasareladepagoDefaultRow createRow(Map<String, dynamic> data) =>
      PasareladepagoDefaultRow(data);
}

class PasareladepagoDefaultRow extends SupabaseDataRow {
  PasareladepagoDefaultRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PasareladepagoDefaultTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);
}
