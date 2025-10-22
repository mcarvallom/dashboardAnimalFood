import '../database.dart';

class CartaRestauranteTable extends SupabaseTable<CartaRestauranteRow> {
  @override
  String get tableName => 'carta_restaurante';

  @override
  CartaRestauranteRow createRow(Map<String, dynamic> data) =>
      CartaRestauranteRow(data);
}

class CartaRestauranteRow extends SupabaseDataRow {
  CartaRestauranteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CartaRestauranteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  List<String> get imgList => getListField<String>('img_list');
  set imgList(List<String>? value) => setListField<String>('img_list', value);

  int? get empresa => getField<int>('empresa');
  set empresa(int? value) => setField<int>('empresa', value);
}
