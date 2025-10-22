import '../database.dart';

class FaqTable extends SupabaseTable<FaqRow> {
  @override
  String get tableName => 'faq';

  @override
  FaqRow createRow(Map<String, dynamic> data) => FaqRow(data);
}

class FaqRow extends SupabaseDataRow {
  FaqRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FaqTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nombreCompleto => getField<String>('nombreCompleto');
  set nombreCompleto(String? value) =>
      setField<String>('nombreCompleto', value);

  String get pregunta => getField<String>('pregunta')!;
  set pregunta(String value) => setField<String>('pregunta', value);

  String? get respuesta => getField<String>('respuesta');
  set respuesta(String? value) => setField<String>('respuesta', value);

  String? get cliente => getField<String>('cliente');
  set cliente(String? value) => setField<String>('cliente', value);
}
