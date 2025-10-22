import '../database.dart';

class EventosTable extends SupabaseTable<EventosRow> {
  @override
  String get tableName => 'eventos';

  @override
  EventosRow createRow(Map<String, dynamic> data) => EventosRow(data);
}

class EventosRow extends SupabaseDataRow {
  EventosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get empresa => getField<int>('empresa')!;
  set empresa(int value) => setField<int>('empresa', value);

  String get img => getField<String>('img')!;
  set img(String value) => setField<String>('img', value);

  String get titulo => getField<String>('titulo')!;
  set titulo(String value) => setField<String>('titulo', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  DateTime get fechaInicio => getField<DateTime>('fecha_inicio')!;
  set fechaInicio(DateTime value) => setField<DateTime>('fecha_inicio', value);

  DateTime? get fechaFin => getField<DateTime>('fecha_fin');
  set fechaFin(DateTime? value) => setField<DateTime>('fecha_fin', value);

  String? get imgPromocional => getField<String>('img_promocional');
  set imgPromocional(String? value) =>
      setField<String>('img_promocional', value);

  String? get enlacePassline => getField<String>('enlace_passline');
  set enlacePassline(String? value) =>
      setField<String>('enlace_passline', value);

  int? get valorEntrada => getField<int>('valor_entrada');
  set valorEntrada(int? value) => setField<int>('valor_entrada', value);
}
