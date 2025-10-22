import '../database.dart';

class PreguntasFrecuentesTable extends SupabaseTable<PreguntasFrecuentesRow> {
  @override
  String get tableName => 'preguntas_frecuentes';

  @override
  PreguntasFrecuentesRow createRow(Map<String, dynamic> data) =>
      PreguntasFrecuentesRow(data);
}

class PreguntasFrecuentesRow extends SupabaseDataRow {
  PreguntasFrecuentesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PreguntasFrecuentesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get pregunta => getField<String>('pregunta');
  set pregunta(String? value) => setField<String>('pregunta', value);

  String? get respueta => getField<String>('respueta');
  set respueta(String? value) => setField<String>('respueta', value);
}
