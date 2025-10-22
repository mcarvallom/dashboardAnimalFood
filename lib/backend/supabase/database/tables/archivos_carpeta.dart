import '../database.dart';

class ArchivosCarpetaTable extends SupabaseTable<ArchivosCarpetaRow> {
  @override
  String get tableName => 'archivos_carpeta';

  @override
  ArchivosCarpetaRow createRow(Map<String, dynamic> data) =>
      ArchivosCarpetaRow(data);
}

class ArchivosCarpetaRow extends SupabaseDataRow {
  ArchivosCarpetaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ArchivosCarpetaTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get carpeta => getField<String>('carpeta');
  set carpeta(String? value) => setField<String>('carpeta', value);

  List<String> get urlArchivo => getListField<String>('url_archivo');
  set urlArchivo(List<String>? value) =>
      setListField<String>('url_archivo', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get nombreArchivo => getField<String>('nombre_archivo');
  set nombreArchivo(String? value) => setField<String>('nombre_archivo', value);

  DateTime? get fechaDocumento => getField<DateTime>('fecha_documento');
  set fechaDocumento(DateTime? value) =>
      setField<DateTime>('fecha_documento', value);
}
