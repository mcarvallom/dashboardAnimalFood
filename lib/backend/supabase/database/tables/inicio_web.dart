import '../database.dart';

class InicioWebTable extends SupabaseTable<InicioWebRow> {
  @override
  String get tableName => 'inicioWeb';

  @override
  InicioWebRow createRow(Map<String, dynamic> data) => InicioWebRow(data);
}

class InicioWebRow extends SupabaseDataRow {
  InicioWebRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InicioWebTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get web => getField<int>('web');
  set web(int? value) => setField<int>('web', value);

  String? get portada => getField<String>('portada');
  set portada(String? value) => setField<String>('portada', value);

  String? get banner => getField<String>('banner');
  set banner(String? value) => setField<String>('banner', value);

  String? get portadaMovil => getField<String>('portada_movil');
  set portadaMovil(String? value) => setField<String>('portada_movil', value);

  String? get bannerMovil => getField<String>('banner_movil');
  set bannerMovil(String? value) => setField<String>('banner_movil', value);

  String? get videoPromocional => getField<String>('video_promocional');
  set videoPromocional(String? value) =>
      setField<String>('video_promocional', value);

  List<String> get carruselMovil => getListField<String>('carruselMovil');
  set carruselMovil(List<String>? value) =>
      setListField<String>('carruselMovil', value);
}
