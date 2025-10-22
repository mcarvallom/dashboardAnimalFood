import '../database.dart';

class ClavespasareladepagoTable extends SupabaseTable<ClavespasareladepagoRow> {
  @override
  String get tableName => 'clavespasareladepago';

  @override
  ClavespasareladepagoRow createRow(Map<String, dynamic> data) =>
      ClavespasareladepagoRow(data);
}

class ClavespasareladepagoRow extends SupabaseDataRow {
  ClavespasareladepagoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClavespasareladepagoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  int? get pasarela => getField<int>('pasarela');
  set pasarela(int? value) => setField<int>('pasarela', value);

  String? get apikey => getField<String>('apikey');
  set apikey(String? value) => setField<String>('apikey', value);

  String? get secretkey => getField<String>('secretkey');
  set secretkey(String? value) => setField<String>('secretkey', value);

  String? get publickey => getField<String>('publickey');
  set publickey(String? value) => setField<String>('publickey', value);

  String? get accestoken => getField<String>('accestoken');
  set accestoken(String? value) => setField<String>('accestoken', value);

  String? get login => getField<String>('login');
  set login(String? value) => setField<String>('login', value);
}
