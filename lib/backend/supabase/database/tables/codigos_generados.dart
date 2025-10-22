import '../database.dart';

class CodigosGeneradosTable extends SupabaseTable<CodigosGeneradosRow> {
  @override
  String get tableName => 'codigosGenerados';

  @override
  CodigosGeneradosRow createRow(Map<String, dynamic> data) =>
      CodigosGeneradosRow(data);
}

class CodigosGeneradosRow extends SupabaseDataRow {
  CodigosGeneradosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CodigosGeneradosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get codigo => getField<String>('codigo');
  set codigo(String? value) => setField<String>('codigo', value);
}
