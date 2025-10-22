import '../database.dart';

class CarritoTable extends SupabaseTable<CarritoRow> {
  @override
  String get tableName => 'carrito';

  @override
  CarritoRow createRow(Map<String, dynamic> data) => CarritoRow(data);
}

class CarritoRow extends SupabaseDataRow {
  CarritoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CarritoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double get monto => getField<double>('monto')!;
  set monto(double value) => setField<double>('monto', value);

  double? get precioEnvio => getField<double>('precioEnvio');
  set precioEnvio(double? value) => setField<double>('precioEnvio', value);

  String get usuario => getField<String>('usuario')!;
  set usuario(String value) => setField<String>('usuario', value);
}
