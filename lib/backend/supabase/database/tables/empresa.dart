import '../database.dart';

class EmpresaTable extends SupabaseTable<EmpresaRow> {
  @override
  String get tableName => 'empresa';

  @override
  EmpresaRow createRow(Map<String, dynamic> data) => EmpresaRow(data);
}

class EmpresaRow extends SupabaseDataRow {
  EmpresaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmpresaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nombreEmpresa => getField<String>('nombreEmpresa');
  set nombreEmpresa(String? value) => setField<String>('nombreEmpresa', value);

  String? get logo => getField<String>('logo');
  set logo(String? value) => setField<String>('logo', value);

  String? get tipoEmpresa => getField<String>('tipoEmpresa');
  set tipoEmpresa(String? value) => setField<String>('tipoEmpresa', value);

  String? get rutEmpresa => getField<String>('rutEmpresa');
  set rutEmpresa(String? value) => setField<String>('rutEmpresa', value);

  String? get razonSocialEmpresa => getField<String>('razonSocialEmpresa');
  set razonSocialEmpresa(String? value) =>
      setField<String>('razonSocialEmpresa', value);

  String? get giroEmpresa => getField<String>('giroEmpresa');
  set giroEmpresa(String? value) => setField<String>('giroEmpresa', value);

  String? get direccionEmpresa => getField<String>('direccionEmpresa');
  set direccionEmpresa(String? value) =>
      setField<String>('direccionEmpresa', value);

  String? get comunaEmpresa => getField<String>('comunaEmpresa');
  set comunaEmpresa(String? value) => setField<String>('comunaEmpresa', value);

  int? get diasRestantesPlan => getField<int>('dias_restantes_plan');
  set diasRestantesPlan(int? value) =>
      setField<int>('dias_restantes_plan', value);

  double? get numEmpresa => getField<double>('numEmpresa');
  set numEmpresa(double? value) => setField<double>('numEmpresa', value);

  String? get correoEmpresa => getField<String>('correoEmpresa');
  set correoEmpresa(String? value) => setField<String>('correoEmpresa', value);

  String? get descripcionEmpresa => getField<String>('descripcionEmpresa');
  set descripcionEmpresa(String? value) =>
      setField<String>('descripcionEmpresa', value);

  String? get imgEmpresa => getField<String>('imgEmpresa');
  set imgEmpresa(String? value) => setField<String>('imgEmpresa', value);

  int? get ciudad => getField<int>('ciudad');
  set ciudad(int? value) => setField<int>('ciudad', value);

  int? get region => getField<int>('region');
  set region(int? value) => setField<int>('region', value);

  String? get versionApp => getField<String>('versionApp');
  set versionApp(String? value) => setField<String>('versionApp', value);

  bool? get tiendaCerrada => getField<bool>('tienda_cerrada');
  set tiendaCerrada(bool? value) => setField<bool>('tienda_cerrada', value);

  String? get mensajeTiendaCerrada =>
      getField<String>('mensaje_tienda_cerrada');
  set mensajeTiendaCerrada(String? value) =>
      setField<String>('mensaje_tienda_cerrada', value);
}
