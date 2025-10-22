import '../database.dart';

class TarjetaUsuarioTable extends SupabaseTable<TarjetaUsuarioRow> {
  @override
  String get tableName => 'tarjetaUsuario';

  @override
  TarjetaUsuarioRow createRow(Map<String, dynamic> data) =>
      TarjetaUsuarioRow(data);
}

class TarjetaUsuarioRow extends SupabaseDataRow {
  TarjetaUsuarioRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TarjetaUsuarioTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get numTarjeta => getField<double>('numTarjeta');
  set numTarjeta(double? value) => setField<double>('numTarjeta', value);

  int? get mesVencimiento => getField<int>('mesVencimiento');
  set mesVencimiento(int? value) => setField<int>('mesVencimiento', value);

  int? get annioVencimiento => getField<int>('annioVencimiento');
  set annioVencimiento(int? value) => setField<int>('annioVencimiento', value);

  int? get cvv => getField<int>('cvv');
  set cvv(int? value) => setField<int>('cvv', value);

  String? get nombreTarjeta => getField<String>('nombreTarjeta');
  set nombreTarjeta(String? value) => setField<String>('nombreTarjeta', value);

  String? get rutTarjeta => getField<String>('rutTarjeta');
  set rutTarjeta(String? value) => setField<String>('rutTarjeta', value);

  String? get tipoTarjeta => getField<String>('tipoTarjeta');
  set tipoTarjeta(String? value) => setField<String>('tipoTarjeta', value);

  String? get proveedorTarjeta => getField<String>('proveedorTarjeta');
  set proveedorTarjeta(String? value) =>
      setField<String>('proveedorTarjeta', value);

  int? get primerosSeisdigitos => getField<int>('primerosSeisdigitos');
  set primerosSeisdigitos(int? value) =>
      setField<int>('primerosSeisdigitos', value);

  int? get ultmosCuatrodigitos => getField<int>('ultmosCuatrodigitos');
  set ultmosCuatrodigitos(int? value) =>
      setField<int>('ultmosCuatrodigitos', value);

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);
}
