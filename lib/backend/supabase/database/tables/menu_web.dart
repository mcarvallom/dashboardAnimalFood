import '../database.dart';

class MenuWebTable extends SupabaseTable<MenuWebRow> {
  @override
  String get tableName => 'menuWeb';

  @override
  MenuWebRow createRow(Map<String, dynamic> data) => MenuWebRow(data);
}

class MenuWebRow extends SupabaseDataRow {
  MenuWebRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MenuWebTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get web => getField<int>('web');
  set web(int? value) => setField<int>('web', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  int? get pagina => getField<int>('pagina');
  set pagina(int? value) => setField<int>('pagina', value);

  int? get ordenNum => getField<int>('ordenNum');
  set ordenNum(int? value) => setField<int>('ordenNum', value);
}
