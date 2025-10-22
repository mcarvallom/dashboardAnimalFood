import '../database.dart';

class SucursalTable extends SupabaseTable<SucursalRow> {
  @override
  String get tableName => 'Sucursal';

  @override
  SucursalRow createRow(Map<String, dynamic> data) => SucursalRow(data);
}

class SucursalRow extends SupabaseDataRow {
  SucursalRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SucursalTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);

  double? get numeroContacto => getField<double>('numeroContacto');
  set numeroContacto(double? value) =>
      setField<double>('numeroContacto', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  String? get correoElectronico => getField<String>('correoElectronico');
  set correoElectronico(String? value) =>
      setField<String>('correoElectronico', value);

  String? get latitud => getField<String>('latitud');
  set latitud(String? value) => setField<String>('latitud', value);

  String? get longitud => getField<String>('longitud');
  set longitud(String? value) => setField<String>('longitud', value);

  bool? get disponible => getField<bool>('disponible');
  set disponible(bool? value) => setField<bool>('disponible', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  int? get ciudad => getField<int>('ciudad');
  set ciudad(int? value) => setField<int>('ciudad', value);

  int? get region => getField<int>('region');
  set region(int? value) => setField<int>('region', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
