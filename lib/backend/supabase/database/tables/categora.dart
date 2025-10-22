import '../database.dart';

class CategoraTable extends SupabaseTable<CategoraRow> {
  @override
  String get tableName => 'Categoría';

  @override
  CategoraRow createRow(Map<String, dynamic> data) => CategoraRow(data);
}

class CategoraRow extends SupabaseDataRow {
  CategoraRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoraTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);

  bool get isWeb => getField<bool>('isWeb')!;
  set isWeb(bool value) => setField<bool>('isWeb', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);
}
