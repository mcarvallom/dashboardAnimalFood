import '../database.dart';

class CertificadoDigitalTable extends SupabaseTable<CertificadoDigitalRow> {
  @override
  String get tableName => 'certificado_digital';

  @override
  CertificadoDigitalRow createRow(Map<String, dynamic> data) =>
      CertificadoDigitalRow(data);
}

class CertificadoDigitalRow extends SupabaseDataRow {
  CertificadoDigitalRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CertificadoDigitalTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get certificadoPfx => getField<String>('certificado_pfx');
  set certificadoPfx(String? value) =>
      setField<String>('certificado_pfx', value);

  String? get serie => getField<String>('serie');
  set serie(String? value) => setField<String>('serie', value);

  String? get nombreTitular => getField<String>('nombre_titular');
  set nombreTitular(String? value) => setField<String>('nombre_titular', value);

  String? get correo => getField<String>('correo');
  set correo(String? value) => setField<String>('correo', value);

  String? get validoDesde => getField<String>('valido_desde');
  set validoDesde(String? value) => setField<String>('valido_desde', value);

  String? get validoHasta => getField<String>('valido_hasta');
  set validoHasta(String? value) => setField<String>('valido_hasta', value);

  String? get emisor => getField<String>('emisor');
  set emisor(String? value) => setField<String>('emisor', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  String? get claveCertificado => getField<String>('clave_certificado');
  set claveCertificado(String? value) =>
      setField<String>('clave_certificado', value);
}
