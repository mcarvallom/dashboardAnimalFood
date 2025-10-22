import '../database.dart';

class TokensTable extends SupabaseTable<TokensRow> {
  @override
  String get tableName => 'tokens';

  @override
  TokensRow createRow(Map<String, dynamic> data) => TokensRow(data);
}

class TokensRow extends SupabaseDataRow {
  TokensRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TokensTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get token => getField<String>('token');
  set token(String? value) => setField<String>('token', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
