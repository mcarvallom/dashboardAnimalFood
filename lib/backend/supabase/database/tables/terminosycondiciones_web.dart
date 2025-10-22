import '../database.dart';

class TerminosycondicionesWebTable
    extends SupabaseTable<TerminosycondicionesWebRow> {
  @override
  String get tableName => 'terminosycondicionesWeb';

  @override
  TerminosycondicionesWebRow createRow(Map<String, dynamic> data) =>
      TerminosycondicionesWebRow(data);
}

class TerminosycondicionesWebRow extends SupabaseDataRow {
  TerminosycondicionesWebRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TerminosycondicionesWebTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  String? get terminosycondiciones => getField<String>('terminosycondiciones');
  set terminosycondiciones(String? value) =>
      setField<String>('terminosycondiciones', value);
}
