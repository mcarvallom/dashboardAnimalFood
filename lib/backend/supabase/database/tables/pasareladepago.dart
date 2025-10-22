import '../database.dart';

class PasareladepagoTable extends SupabaseTable<PasareladepagoRow> {
  @override
  String get tableName => 'pasareladepago';

  @override
  PasareladepagoRow createRow(Map<String, dynamic> data) =>
      PasareladepagoRow(data);
}

class PasareladepagoRow extends SupabaseDataRow {
  PasareladepagoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PasareladepagoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  bool? get activo => getField<bool>('activo');
  set activo(bool? value) => setField<bool>('activo', value);

  int? get pasarela => getField<int>('pasarela');
  set pasarela(int? value) => setField<int>('pasarela', value);

  String? get sucursal => getField<String>('sucursal');
  set sucursal(String? value) => setField<String>('sucursal', value);
}
