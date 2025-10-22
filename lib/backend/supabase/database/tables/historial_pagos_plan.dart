import '../database.dart';

class HistorialPagosPlanTable extends SupabaseTable<HistorialPagosPlanRow> {
  @override
  String get tableName => 'historialPagosPlan';

  @override
  HistorialPagosPlanRow createRow(Map<String, dynamic> data) =>
      HistorialPagosPlanRow(data);
}

class HistorialPagosPlanRow extends SupabaseDataRow {
  HistorialPagosPlanRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HistorialPagosPlanTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get planAsociado => getField<int>('planAsociado');
  set planAsociado(int? value) => setField<int>('planAsociado', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  int? get montoPagado => getField<int>('monto_pagado');
  set montoPagado(int? value) => setField<int>('monto_pagado', value);
}
