import '../database.dart';

class UserTable extends SupabaseTable<UserRow> {
  @override
  String get tableName => 'user';

  @override
  UserRow createRow(Map<String, dynamic> data) => UserRow(data);
}

class UserRow extends SupabaseDataRow {
  UserRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get apellido => getField<String>('apellido');
  set apellido(String? value) => setField<String>('apellido', value);

  String? get imagenPerfil => getField<String>('imagenPerfil');
  set imagenPerfil(String? value) => setField<String>('imagenPerfil', value);

  double get numeroContacto => getField<double>('numeroContacto')!;
  set numeroContacto(double value) => setField<double>('numeroContacto', value);

  double? get numeroContactoSecundario =>
      getField<double>('numeroContactoSecundario');
  set numeroContactoSecundario(double? value) =>
      setField<double>('numeroContactoSecundario', value);

  String get direccion => getField<String>('direccion')!;
  set direccion(String value) => setField<String>('direccion', value);

  String get pais => getField<String>('pais')!;
  set pais(String value) => setField<String>('pais', value);

  String? get rol => getField<String>('rol');
  set rol(String? value) => setField<String>('rol', value);

  double get run => getField<double>('run')!;
  set run(double value) => setField<double>('run', value);

  String get dv => getField<String>('dv')!;
  set dv(String value) => setField<String>('dv', value);

  bool? get datosCompletos => getField<bool>('datosCompletos');
  set datosCompletos(bool? value) => setField<bool>('datosCompletos', value);

  List<String> get productosFavoritos =>
      getListField<String>('productos_favoritos');
  set productosFavoritos(List<String>? value) =>
      setListField<String>('productos_favoritos', value);

  String get tablaID => getField<String>('tablaID')!;
  set tablaID(String value) => setField<String>('tablaID', value);

  String? get nombreCompleto => getField<String>('nombreCompleto');
  set nombreCompleto(String? value) =>
      setField<String>('nombreCompleto', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get correoUser => getField<String>('correoUser');
  set correoUser(String? value) => setField<String>('correoUser', value);

  bool? get isEmpresa => getField<bool>('isEmpresa');
  set isEmpresa(bool? value) => setField<bool>('isEmpresa', value);

  String? get razSocial => getField<String>('raz_social');
  set razSocial(String? value) => setField<String>('raz_social', value);

  String? get giro => getField<String>('giro');
  set giro(String? value) => setField<String>('giro', value);

  DateTime? get fechaNacimiento => getField<DateTime>('fechaNacimiento');
  set fechaNacimiento(DateTime? value) =>
      setField<DateTime>('fechaNacimiento', value);

  int? get ciudad => getField<int>('ciudad');
  set ciudad(int? value) => setField<int>('ciudad', value);

  int? get region => getField<int>('region');
  set region(int? value) => setField<int>('region', value);

  String? get referido => getField<String>('referido');
  set referido(String? value) => setField<String>('referido', value);

  String? get codigoReferido => getField<String>('codigoReferido');
  set codigoReferido(String? value) =>
      setField<String>('codigoReferido', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get sucursal => getField<String>('sucursal');
  set sucursal(String? value) => setField<String>('sucursal', value);
}
