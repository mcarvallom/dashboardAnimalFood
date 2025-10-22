import '../database.dart';

class PlanEmpresaTable extends SupabaseTable<PlanEmpresaRow> {
  @override
  String get tableName => 'plan_empresa';

  @override
  PlanEmpresaRow createRow(Map<String, dynamic> data) => PlanEmpresaRow(data);
}

class PlanEmpresaRow extends SupabaseDataRow {
  PlanEmpresaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlanEmpresaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  int? get planAsociado => getField<int>('plan_asociado');
  set planAsociado(int? value) => setField<int>('plan_asociado', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  int? get valorPlan => getField<int>('valor_plan');
  set valorPlan(int? value) => setField<int>('valor_plan', value);
}
