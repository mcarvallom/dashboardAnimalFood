import '../database.dart';

class WebTable extends SupabaseTable<WebRow> {
  @override
  String get tableName => 'web';

  @override
  WebRow createRow(Map<String, dynamic> data) => WebRow(data);
}

class WebRow extends SupabaseDataRow {
  WebRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WebTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  String? get colorprimaryBackground =>
      getField<String>('colorprimaryBackground');
  set colorprimaryBackground(String? value) =>
      setField<String>('colorprimaryBackground', value);

  String? get colorsecondaryBackground =>
      getField<String>('colorsecondaryBackground');
  set colorsecondaryBackground(String? value) =>
      setField<String>('colorsecondaryBackground', value);

  String? get colorprimary => getField<String>('colorprimary');
  set colorprimary(String? value) => setField<String>('colorprimary', value);

  String? get colorsecondary => getField<String>('colorsecondary');
  set colorsecondary(String? value) =>
      setField<String>('colorsecondary', value);

  String? get colorprimaryText => getField<String>('colorprimaryText');
  set colorprimaryText(String? value) =>
      setField<String>('colorprimaryText', value);

  String? get colorsecondaryText => getField<String>('colorsecondaryText');
  set colorsecondaryText(String? value) =>
      setField<String>('colorsecondaryText', value);

  String? get colorNavBar => getField<String>('colorNavBar');
  set colorNavBar(String? value) => setField<String>('colorNavBar', value);

  String? get colorFooter => getField<String>('colorFooter');
  set colorFooter(String? value) => setField<String>('colorFooter', value);

  bool get isCatalogo => getField<bool>('isCatalogo')!;
  set isCatalogo(bool value) => setField<bool>('isCatalogo', value);
}
