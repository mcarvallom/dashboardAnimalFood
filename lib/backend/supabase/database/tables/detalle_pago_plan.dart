import '../database.dart';

class DetallePagoPlanTable extends SupabaseTable<DetallePagoPlanRow> {
  @override
  String get tableName => 'detallePagoPlan';

  @override
  DetallePagoPlanRow createRow(Map<String, dynamic> data) =>
      DetallePagoPlanRow(data);
}

class DetallePagoPlanRow extends SupabaseDataRow {
  DetallePagoPlanRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DetallePagoPlanTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get planPagado => getField<int>('planPagado');
  set planPagado(int? value) => setField<int>('planPagado', value);

  int? get primeros4digitos => getField<int>('primeros4digitos');
  set primeros4digitos(int? value) => setField<int>('primeros4digitos', value);

  int? get ultimos6digitos => getField<int>('ultimos6digitos');
  set ultimos6digitos(int? value) => setField<int>('ultimos6digitos', value);

  int? get mesExpiracion => getField<int>('mesExpiración');
  set mesExpiracion(int? value) => setField<int>('mesExpiración', value);

  int? get annioExpiracion => getField<int>('annioExpiracion');
  set annioExpiracion(int? value) => setField<int>('annioExpiracion', value);

  String? get nombreTarjeta => getField<String>('nombreTarjeta');
  set nombreTarjeta(String? value) => setField<String>('nombreTarjeta', value);

  String? get rutTarjeta => getField<String>('rutTarjeta');
  set rutTarjeta(String? value) => setField<String>('rutTarjeta', value);

  String? get estadoTarjeta => getField<String>('estadoTarjeta');
  set estadoTarjeta(String? value) => setField<String>('estadoTarjeta', value);

  String? get antiguoEstadoPlan => getField<String>('antiguo_estadoPlan');
  set antiguoEstadoPlan(String? value) =>
      setField<String>('antiguo_estadoPlan', value);

  String? get nuevoEstadoPlan => getField<String>('nuevo_estadoPlan');
  set nuevoEstadoPlan(String? value) =>
      setField<String>('nuevo_estadoPlan', value);

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);
}
