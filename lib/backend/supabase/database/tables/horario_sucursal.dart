import '../database.dart';

class HorarioSucursalTable extends SupabaseTable<HorarioSucursalRow> {
  @override
  String get tableName => 'horarioSucursal';

  @override
  HorarioSucursalRow createRow(Map<String, dynamic> data) =>
      HorarioSucursalRow(data);
}

class HorarioSucursalRow extends SupabaseDataRow {
  HorarioSucursalRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HorarioSucursalTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get lunes => getField<String>('lunes');
  set lunes(String? value) => setField<String>('lunes', value);

  String? get martes => getField<String>('martes');
  set martes(String? value) => setField<String>('martes', value);

  String? get miercoles => getField<String>('miercoles');
  set miercoles(String? value) => setField<String>('miercoles', value);

  String? get jueves => getField<String>('jueves');
  set jueves(String? value) => setField<String>('jueves', value);

  String? get viernes => getField<String>('viernes');
  set viernes(String? value) => setField<String>('viernes', value);

  String? get sabado => getField<String>('sabado');
  set sabado(String? value) => setField<String>('sabado', value);

  String? get domingo => getField<String>('domingo');
  set domingo(String? value) => setField<String>('domingo', value);

  String? get sucursal => getField<String>('sucursal');
  set sucursal(String? value) => setField<String>('sucursal', value);
}
