import '../database.dart';

class ResumendiarioTable extends SupabaseTable<ResumendiarioRow> {
  @override
  String get tableName => 'resumendiario';

  @override
  ResumendiarioRow createRow(Map<String, dynamic> data) =>
      ResumendiarioRow(data);
}

class ResumendiarioRow extends SupabaseDataRow {
  ResumendiarioRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ResumendiarioTable();

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

  String? get sucursal => getField<String>('sucursal');
  set sucursal(String? value) => setField<String>('sucursal', value);

  double? get cantidadPersonas => getField<double>('cantidadPersonas');
  set cantidadPersonas(double? value) =>
      setField<double>('cantidadPersonas', value);
}
