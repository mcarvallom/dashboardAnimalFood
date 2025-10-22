import '../database.dart';

class CafTable extends SupabaseTable<CafRow> {
  @override
  String get tableName => 'caf';

  @override
  CafRow createRow(Map<String, dynamic> data) => CafRow(data);
}

class CafRow extends SupabaseDataRow {
  CafRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CafTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get tipoDocumento => getField<String>('tipo_documento');
  set tipoDocumento(String? value) => setField<String>('tipo_documento', value);

  String? get empresa => getField<String>('empresa');
  set empresa(String? value) => setField<String>('empresa', value);

  String? get desde => getField<String>('desde');
  set desde(String? value) => setField<String>('desde', value);

  String? get hasta => getField<String>('hasta');
  set hasta(String? value) => setField<String>('hasta', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  int? get folioDisponible => getField<int>('folio_disponible');
  set folioDisponible(int? value) => setField<int>('folio_disponible', value);
}
