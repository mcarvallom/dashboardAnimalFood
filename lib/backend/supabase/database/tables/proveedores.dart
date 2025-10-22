import '../database.dart';

class ProveedoresTable extends SupabaseTable<ProveedoresRow> {
  @override
  String get tableName => 'proveedores';

  @override
  ProveedoresRow createRow(Map<String, dynamic> data) => ProveedoresRow(data);
}

class ProveedoresRow extends SupabaseDataRow {
  ProveedoresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProveedoresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get razonsocial => getField<String>('razonsocial');
  set razonsocial(String? value) => setField<String>('razonsocial', value);

  String? get giro => getField<String>('giro');
  set giro(String? value) => setField<String>('giro', value);

  double? get numContacto => getField<double>('numContacto');
  set numContacto(double? value) => setField<double>('numContacto', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  String? get ciudad => getField<String>('ciudad');
  set ciudad(String? value) => setField<String>('ciudad', value);

  String? get region => getField<String>('region');
  set region(String? value) => setField<String>('region', value);

  String? get pais => getField<String>('pais');
  set pais(String? value) => setField<String>('pais', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);
}
