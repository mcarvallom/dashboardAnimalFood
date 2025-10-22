import '../database.dart';

class ValorMonedaTable extends SupabaseTable<ValorMonedaRow> {
  @override
  String get tableName => 'valor_moneda';

  @override
  ValorMonedaRow createRow(Map<String, dynamic> data) => ValorMonedaRow(data);
}

class ValorMonedaRow extends SupabaseDataRow {
  ValorMonedaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ValorMonedaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get uf => getField<double>('uf');
  set uf(double? value) => setField<double>('uf', value);

  DateTime? get fechaModificado => getField<DateTime>('fechaModificado');
  set fechaModificado(DateTime? value) =>
      setField<DateTime>('fechaModificado', value);
}
