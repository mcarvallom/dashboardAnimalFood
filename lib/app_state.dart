import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _token = await secureStorage.getString('ff_token') ?? _token;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _estadoPedido = 'Completado';
  String get estadoPedido => _estadoPedido;
  set estadoPedido(String _value) {
    _estadoPedido = _value;
  }

  List<String> _variasImagenesProducto = [];
  List<String> get variasImagenesProducto => _variasImagenesProducto;
  set variasImagenesProducto(List<String> _value) {
    _variasImagenesProducto = _value;
  }

  void addToVariasImagenesProducto(String _value) {
    _variasImagenesProducto.add(_value);
  }

  void removeFromVariasImagenesProducto(String _value) {
    _variasImagenesProducto.remove(_value);
  }

  void removeAtIndexFromVariasImagenesProducto(int _index) {
    _variasImagenesProducto.removeAt(_index);
  }

  void updateVariasImagenesProductoAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _variasImagenesProducto[_index] = updateFn(_variasImagenesProducto[_index]);
  }

  void insertAtIndexInVariasImagenesProducto(int _index, String _value) {
    _variasImagenesProducto.insert(_index, _value);
  }

  String _imagenProducto = '';
  String get imagenProducto => _imagenProducto;
  set imagenProducto(String _value) {
    _imagenProducto = _value;
  }

  List<String> _etiquetaProducto = [];
  List<String> get etiquetaProducto => _etiquetaProducto;
  set etiquetaProducto(List<String> _value) {
    _etiquetaProducto = _value;
  }

  void addToEtiquetaProducto(String _value) {
    _etiquetaProducto.add(_value);
  }

  void removeFromEtiquetaProducto(String _value) {
    _etiquetaProducto.remove(_value);
  }

  void removeAtIndexFromEtiquetaProducto(int _index) {
    _etiquetaProducto.removeAt(_index);
  }

  void updateEtiquetaProductoAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _etiquetaProducto[_index] = updateFn(_etiquetaProducto[_index]);
  }

  void insertAtIndexInEtiquetaProducto(int _index, String _value) {
    _etiquetaProducto.insert(_index, _value);
  }

  bool _busquedaActiva = false;
  bool get busquedaActiva => _busquedaActiva;
  set busquedaActiva(bool _value) {
    _busquedaActiva = _value;
  }

  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  set producto(DocumentReference? _value) {
    _producto = _value;
  }

  String _imagenSubida = '';
  String get imagenSubida => _imagenSubida;
  set imagenSubida(String _value) {
    _imagenSubida = _value;
  }

  bool _isImagenSubida = false;
  bool get isImagenSubida => _isImagenSubida;
  set isImagenSubida(bool _value) {
    _isImagenSubida = _value;
  }

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
    secureStorage.setString('ff_token', _value);
  }

  void deleteToken() {
    secureStorage.delete(key: 'ff_token');
  }

  String _seed = '';
  String get seed => _seed;
  set seed(String _value) {
    _seed = _value;
  }

  int _nonce = 0;
  int get nonce => _nonce;
  set nonce(int _value) {
    _nonce = _value;
  }

  List<DocumentReference> _prodAsociado = [];
  List<DocumentReference> get prodAsociado => _prodAsociado;
  set prodAsociado(List<DocumentReference> _value) {
    _prodAsociado = _value;
  }

  void addToProdAsociado(DocumentReference _value) {
    _prodAsociado.add(_value);
  }

  void removeFromProdAsociado(DocumentReference _value) {
    _prodAsociado.remove(_value);
  }

  void removeAtIndexFromProdAsociado(int _index) {
    _prodAsociado.removeAt(_index);
  }

  void updateProdAsociadoAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _prodAsociado[_index] = updateFn(_prodAsociado[_index]);
  }

  void insertAtIndexInProdAsociado(int _index, DocumentReference _value) {
    _prodAsociado.insert(_index, _value);
  }

  List<VariacionStruct> _variacion = [];
  List<VariacionStruct> get variacion => _variacion;
  set variacion(List<VariacionStruct> _value) {
    _variacion = _value;
  }

  void addToVariacion(VariacionStruct _value) {
    _variacion.add(_value);
  }

  void removeFromVariacion(VariacionStruct _value) {
    _variacion.remove(_value);
  }

  void removeAtIndexFromVariacion(int _index) {
    _variacion.removeAt(_index);
  }

  void updateVariacionAtIndex(
    int _index,
    VariacionStruct Function(VariacionStruct) updateFn,
  ) {
    _variacion[_index] = updateFn(_variacion[_index]);
  }

  void insertAtIndexInVariacion(int _index, VariacionStruct _value) {
    _variacion.insert(_index, _value);
  }

  List<DocumentReference> _variacionesStock = [];
  List<DocumentReference> get variacionesStock => _variacionesStock;
  set variacionesStock(List<DocumentReference> _value) {
    _variacionesStock = _value;
  }

  void addToVariacionesStock(DocumentReference _value) {
    _variacionesStock.add(_value);
  }

  void removeFromVariacionesStock(DocumentReference _value) {
    _variacionesStock.remove(_value);
  }

  void removeAtIndexFromVariacionesStock(int _index) {
    _variacionesStock.removeAt(_index);
  }

  void updateVariacionesStockAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _variacionesStock[_index] = updateFn(_variacionesStock[_index]);
  }

  void insertAtIndexInVariacionesStock(int _index, DocumentReference _value) {
    _variacionesStock.insert(_index, _value);
  }

  DocumentReference? _variacionStock;
  DocumentReference? get variacionStock => _variacionStock;
  set variacionStock(DocumentReference? _value) {
    _variacionStock = _value;
  }

  DocumentReference? _productoStock;
  DocumentReference? get productoStock => _productoStock;
  set productoStock(DocumentReference? _value) {
    _productoStock = _value;
  }

  String _imagenMarca = '';
  String get imagenMarca => _imagenMarca;
  set imagenMarca(String _value) {
    _imagenMarca = _value;
  }

  List<String> _carruselMarca = [];
  List<String> get carruselMarca => _carruselMarca;
  set carruselMarca(List<String> _value) {
    _carruselMarca = _value;
  }

  void addToCarruselMarca(String _value) {
    _carruselMarca.add(_value);
  }

  void removeFromCarruselMarca(String _value) {
    _carruselMarca.remove(_value);
  }

  void removeAtIndexFromCarruselMarca(int _index) {
    _carruselMarca.removeAt(_index);
  }

  void updateCarruselMarcaAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _carruselMarca[_index] = updateFn(_carruselMarca[_index]);
  }

  void insertAtIndexInCarruselMarca(int _index, String _value) {
    _carruselMarca.insert(_index, _value);
  }

  DocumentReference? _variacionCrearOrden;
  DocumentReference? get variacionCrearOrden => _variacionCrearOrden;
  set variacionCrearOrden(DocumentReference? _value) {
    _variacionCrearOrden = _value;
  }

  List<DocumentReference> _selectedItemCrearOrden = [];
  List<DocumentReference> get selectedItemCrearOrden => _selectedItemCrearOrden;
  set selectedItemCrearOrden(List<DocumentReference> _value) {
    _selectedItemCrearOrden = _value;
  }

  void addToSelectedItemCrearOrden(DocumentReference _value) {
    _selectedItemCrearOrden.add(_value);
  }

  void removeFromSelectedItemCrearOrden(DocumentReference _value) {
    _selectedItemCrearOrden.remove(_value);
  }

  void removeAtIndexFromSelectedItemCrearOrden(int _index) {
    _selectedItemCrearOrden.removeAt(_index);
  }

  void updateSelectedItemCrearOrdenAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _selectedItemCrearOrden[_index] = updateFn(_selectedItemCrearOrden[_index]);
  }

  void insertAtIndexInSelectedItemCrearOrden(
      int _index, DocumentReference _value) {
    _selectedItemCrearOrden.insert(_index, _value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
