import '../database.dart';

class MesaTable extends SupabaseTable<MesaRow> {
  @override
  String get tableName => 'mesa';

  @override
  MesaRow createRow(Map<String, dynamic> data) => MesaRow(data);
}

class MesaRow extends SupabaseDataRow {
  MesaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MesaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get numeroMesa => getField<double>('numeroMesa');
  set numeroMesa(double? value) => setField<double>('numeroMesa', value);

  String? get lugar => getField<String>('lugar');
  set lugar(String? value) => setField<String>('lugar', value);

  String? get sucursal => getField<String>('sucursal');
  set sucursal(String? value) => setField<String>('sucursal', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);

  String? get cliente => getField<String>('cliente');
  set cliente(String? value) => setField<String>('cliente', value);

  String? get garzon => getField<String>('garzon');
  set garzon(String? value) => setField<String>('garzon', value);

  bool? get isAbierto => getField<bool>('isAbierto');
  set isAbierto(bool? value) => setField<bool>('isAbierto', value);

  double? get cantidadPersonas => getField<double>('cantidadPersonas');
  set cantidadPersonas(double? value) =>
      setField<double>('cantidadPersonas', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);

  int? get lugarMesa => getField<int>('lugarMesa');
  set lugarMesa(int? value) => setField<int>('lugarMesa', value);
}
