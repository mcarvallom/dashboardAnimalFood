import '../database.dart';

class PasswordResetRequestsTable
    extends SupabaseTable<PasswordResetRequestsRow> {
  @override
  String get tableName => 'password_reset_requests';

  @override
  PasswordResetRequestsRow createRow(Map<String, dynamic> data) =>
      PasswordResetRequestsRow(data);
}

class PasswordResetRequestsRow extends SupabaseDataRow {
  PasswordResetRequestsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PasswordResetRequestsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get token => getField<String>('token')!;
  set token(String value) => setField<String>('token', value);

  DateTime get expiryAt => getField<DateTime>('expiry_at')!;
  set expiryAt(DateTime value) => setField<DateTime>('expiry_at', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
