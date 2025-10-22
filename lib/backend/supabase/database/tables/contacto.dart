import '../database.dart';

class ContactoTable extends SupabaseTable<ContactoRow> {
  @override
  String get tableName => 'contacto';

  @override
  ContactoRow createRow(Map<String, dynamic> data) => ContactoRow(data);
}

class ContactoRow extends SupabaseDataRow {
  ContactoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ContactoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nombreCompleto => getField<String>('nombreCompleto');
  set nombreCompleto(String? value) =>
      setField<String>('nombreCompleto', value);

  double? get numContacto => getField<double>('numContacto');
  set numContacto(double? value) => setField<double>('numContacto', value);

  String? get correo => getField<String>('correo');
  set correo(String? value) => setField<String>('correo', value);

  String? get mensaje => getField<String>('mensaje');
  set mensaje(String? value) => setField<String>('mensaje', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  String? get referido => getField<String>('referido');
  set referido(String? value) => setField<String>('referido', value);
}
