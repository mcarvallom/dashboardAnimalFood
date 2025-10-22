import '../database.dart';

class DatosTransferenciaBancariaTable
    extends SupabaseTable<DatosTransferenciaBancariaRow> {
  @override
  String get tableName => 'datosTransferenciaBancaria';

  @override
  DatosTransferenciaBancariaRow createRow(Map<String, dynamic> data) =>
      DatosTransferenciaBancariaRow(data);
}

class DatosTransferenciaBancariaRow extends SupabaseDataRow {
  DatosTransferenciaBancariaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DatosTransferenciaBancariaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  String? get nombreCompleto => getField<String>('nombre_completo');
  set nombreCompleto(String? value) =>
      setField<String>('nombre_completo', value);

  String? get banco => getField<String>('banco');
  set banco(String? value) => setField<String>('banco', value);

  String? get tipoCuenta => getField<String>('tipo_cuenta');
  set tipoCuenta(String? value) => setField<String>('tipo_cuenta', value);

  String? get rut => getField<String>('rut');
  set rut(String? value) => setField<String>('rut', value);

  double? get numeroCuenta => getField<double>('numero_cuenta');
  set numeroCuenta(double? value) => setField<double>('numero_cuenta', value);

  String? get correo => getField<String>('correo');
  set correo(String? value) => setField<String>('correo', value);

  String? get sucursal => getField<String>('sucursal');
  set sucursal(String? value) => setField<String>('sucursal', value);
}
