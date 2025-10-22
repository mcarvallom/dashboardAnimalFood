import '../database.dart';

class PortadaTable extends SupabaseTable<PortadaRow> {
  @override
  String get tableName => 'portada';

  @override
  PortadaRow createRow(Map<String, dynamic> data) => PortadaRow(data);
}

class PortadaRow extends SupabaseDataRow {
  PortadaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PortadaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get imagenPc => getField<String>('imagenPc');
  set imagenPc(String? value) => setField<String>('imagenPc', value);

  String? get imagenMovil => getField<String>('ImagenMovil');
  set imagenMovil(String? value) => setField<String>('ImagenMovil', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);
}
