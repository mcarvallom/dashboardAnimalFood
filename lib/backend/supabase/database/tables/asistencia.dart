import '../database.dart';

class AsistenciaTable extends SupabaseTable<AsistenciaRow> {
  @override
  String get tableName => 'asistencia';

  @override
  AsistenciaRow createRow(Map<String, dynamic> data) => AsistenciaRow(data);
}

class AsistenciaRow extends SupabaseDataRow {
  AsistenciaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AsistenciaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get horaIngreso => getField<DateTime>('horaIngreso')!;
  set horaIngreso(DateTime value) => setField<DateTime>('horaIngreso', value);

  DateTime? get horaSalida => getField<DateTime>('horaSalida');
  set horaSalida(DateTime? value) => setField<DateTime>('horaSalida', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  String? get lugarEntrada => getField<String>('lugarEntrada');
  set lugarEntrada(String? value) => setField<String>('lugarEntrada', value);

  String? get lugarSalida => getField<String>('lugarSalida');
  set lugarSalida(String? value) => setField<String>('lugarSalida', value);

  String? get sucursal => getField<String>('sucursal');
  set sucursal(String? value) => setField<String>('sucursal', value);
}
