import '../database.dart';

class TokensSimplefacturaTable extends SupabaseTable<TokensSimplefacturaRow> {
  @override
  String get tableName => 'tokens_simplefactura';

  @override
  TokensSimplefacturaRow createRow(Map<String, dynamic> data) =>
      TokensSimplefacturaRow(data);
}

class TokensSimplefacturaRow extends SupabaseDataRow {
  TokensSimplefacturaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TokensSimplefacturaTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get token => getField<String>('token');
  set token(String? value) => setField<String>('token', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
