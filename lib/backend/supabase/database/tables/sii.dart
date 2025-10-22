import '../database.dart';

class SiiTable extends SupabaseTable<SiiRow> {
  @override
  String get tableName => 'sii';

  @override
  SiiRow createRow(Map<String, dynamic> data) => SiiRow(data);
}

class SiiRow extends SupabaseDataRow {
  SiiRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SiiTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get empresa => getField<int>('empresa')!;
  set empresa(int value) => setField<int>('empresa', value);

  String? get rutCertificado => getField<String>('rutCertificado');
  set rutCertificado(String? value) =>
      setField<String>('rutCertificado', value);

  int? get acteco => getField<int>('acteco');
  set acteco(int? value) => setField<int>('acteco', value);

  DateTime? get fechaResolucion => getField<DateTime>('fechaResolucion');
  set fechaResolucion(DateTime? value) =>
      setField<DateTime>('fechaResolucion', value);

  int? get numeroResolucion => getField<int>('numeroResolucion');
  set numeroResolucion(int? value) => setField<int>('numeroResolucion', value);

  DateTime? get fechaeEmisionCertificado =>
      getField<DateTime>('fechaeEmisionCertificado');
  set fechaeEmisionCertificado(DateTime? value) =>
      setField<DateTime>('fechaeEmisionCertificado', value);

  DateTime? get fechaVencimientoCertificado =>
      getField<DateTime>('fechaVencimientoCertificado');
  set fechaVencimientoCertificado(DateTime? value) =>
      setField<DateTime>('fechaVencimientoCertificado', value);

  int? get caf => getField<int>('caf');
  set caf(int? value) => setField<int>('caf', value);

  int? get certificadoDigital => getField<int>('certificado_digital');
  set certificadoDigital(int? value) =>
      setField<int>('certificado_digital', value);
}
