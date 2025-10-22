import '../database.dart';

class EntregaFallidaTable extends SupabaseTable<EntregaFallidaRow> {
  @override
  String get tableName => 'entregaFallida';

  @override
  EntregaFallidaRow createRow(Map<String, dynamic> data) =>
      EntregaFallidaRow(data);
}

class EntregaFallidaRow extends SupabaseDataRow {
  EntregaFallidaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EntregaFallidaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get evidenciaIMG => getField<String>('evidenciaIMG');
  set evidenciaIMG(String? value) => setField<String>('evidenciaIMG', value);

  String? get mensaje => getField<String>('mensaje');
  set mensaje(String? value) => setField<String>('mensaje', value);

  String get cliente => getField<String>('cliente')!;
  set cliente(String value) => setField<String>('cliente', value);

  String get repartidor => getField<String>('repartidor')!;
  set repartidor(String value) => setField<String>('repartidor', value);

  String? get orden => getField<String>('orden');
  set orden(String? value) => setField<String>('orden', value);
}
