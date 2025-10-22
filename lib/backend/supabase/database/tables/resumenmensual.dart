import '../database.dart';

class ResumenmensualTable extends SupabaseTable<ResumenmensualRow> {
  @override
  String get tableName => 'resumenmensual';

  @override
  ResumenmensualRow createRow(Map<String, dynamic> data) =>
      ResumenmensualRow(data);
}

class ResumenmensualRow extends SupabaseDataRow {
  ResumenmensualRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ResumenmensualTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get fecha => getField<DateTime>('fecha')!;
  set fecha(DateTime value) => setField<DateTime>('fecha', value);

  String? get medioDePago => getField<String>('medioDePago');
  set medioDePago(String? value) => setField<String>('medioDePago', value);

  String? get tipoEntrega => getField<String>('tipoEntrega');
  set tipoEntrega(String? value) => setField<String>('tipoEntrega', value);

  double? get totalMonto => getField<double>('totalMonto');
  set totalMonto(double? value) => setField<double>('totalMonto', value);

  double? get sucursal => getField<double>('sucursal');
  set sucursal(double? value) => setField<double>('sucursal', value);

  double? get cantidadPersonas => getField<double>('cantidadPersonas');
  set cantidadPersonas(double? value) =>
      setField<double>('cantidadPersonas', value);
}
