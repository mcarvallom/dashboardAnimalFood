import '../database.dart';

class PaginasWebTable extends SupabaseTable<PaginasWebRow> {
  @override
  String get tableName => 'paginasWeb';

  @override
  PaginasWebRow createRow(Map<String, dynamic> data) => PaginasWebRow(data);
}

class PaginasWebRow extends SupabaseDataRow {
  PaginasWebRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaginasWebTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get web => getField<int>('web');
  set web(int? value) => setField<int>('web', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);
}
