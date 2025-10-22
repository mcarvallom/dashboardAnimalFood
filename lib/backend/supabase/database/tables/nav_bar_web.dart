import '../database.dart';

class NavBarWebTable extends SupabaseTable<NavBarWebRow> {
  @override
  String get tableName => 'navBarWeb';

  @override
  NavBarWebRow createRow(Map<String, dynamic> data) => NavBarWebRow(data);
}

class NavBarWebRow extends SupabaseDataRow {
  NavBarWebRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NavBarWebTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get web => getField<int>('web');
  set web(int? value) => setField<int>('web', value);

  String? get logo => getField<String>('logo');
  set logo(String? value) => setField<String>('logo', value);

  List<int> get menu => getListField<int>('menu');
  set menu(List<int>? value) => setListField<int>('menu', value);
}
