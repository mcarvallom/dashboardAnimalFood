import '../database.dart';

class PlanesRestifyTable extends SupabaseTable<PlanesRestifyRow> {
  @override
  String get tableName => 'planes_restify';

  @override
  PlanesRestifyRow createRow(Map<String, dynamic> data) =>
      PlanesRestifyRow(data);
}

class PlanesRestifyRow extends SupabaseDataRow {
  PlanesRestifyRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlanesRestifyTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nombrePlan => getField<String>('nombre_plan');
  set nombrePlan(String? value) => setField<String>('nombre_plan', value);

  double? get precio => getField<double>('precio');
  set precio(double? value) => setField<double>('precio', value);
}
