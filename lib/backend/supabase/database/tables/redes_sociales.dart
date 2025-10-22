import '../database.dart';

class RedesSocialesTable extends SupabaseTable<RedesSocialesRow> {
  @override
  String get tableName => 'redesSociales';

  @override
  RedesSocialesRow createRow(Map<String, dynamic> data) =>
      RedesSocialesRow(data);
}

class RedesSocialesRow extends SupabaseDataRow {
  RedesSocialesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RedesSocialesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);
}
