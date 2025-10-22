import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/supabase/supabase.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _imgList = [];
  List<String> get imgList => _imgList;
  set imgList(List<String> value) {
    _imgList = value;
  }

  void addToImgList(String value) {
    imgList.add(value);
  }

  void removeFromImgList(String value) {
    imgList.remove(value);
  }

  void removeAtIndexFromImgList(int index) {
    imgList.removeAt(index);
  }

  void updateImgListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    imgList[index] = updateFn(_imgList[index]);
  }

  void insertAtIndexInImgList(int index, String value) {
    imgList.insert(index, value);
  }

  final _userLogeadoManager = FutureRequestManager<List<UserRow>>();
  Future<List<UserRow>> userLogeado({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UserRow>> Function() requestFn,
  }) =>
      _userLogeadoManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserLogeadoCache() => _userLogeadoManager.clear();
  void clearUserLogeadoCacheKey(String? uniqueKey) =>
      _userLogeadoManager.clearRequest(uniqueKey);

  final _productosmasvendidosManager =
      FutureRequestManager<List<ProductosmasvendidosmesRow>>();
  Future<List<ProductosmasvendidosmesRow>> productosmasvendidos({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ProductosmasvendidosmesRow>> Function() requestFn,
  }) =>
      _productosmasvendidosManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProductosmasvendidosCache() => _productosmasvendidosManager.clear();
  void clearProductosmasvendidosCacheKey(String? uniqueKey) =>
      _productosmasvendidosManager.clearRequest(uniqueKey);

  final _proveedoresManager = FutureRequestManager<List<ProveedoresRow>>();
  Future<List<ProveedoresRow>> proveedores({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ProveedoresRow>> Function() requestFn,
  }) =>
      _proveedoresManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProveedoresCache() => _proveedoresManager.clear();
  void clearProveedoresCacheKey(String? uniqueKey) =>
      _proveedoresManager.clearRequest(uniqueKey);
}
