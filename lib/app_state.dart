import 'package:flutter/material.dart';
import '/backend/backend.dart';
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
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _token = await secureStorage.getString('ff_token') ?? _token;
    });
    await _safeInitAsync(() async {
      _reportes = (await secureStorage.getStringList('ff_reportes'))
              ?.map((x) {
                try {
                  return VentasDiariasStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _reportes;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _estadoPedido = 'Completado';
  String get estadoPedido => _estadoPedido;
  set estadoPedido(String value) {
    _estadoPedido = value;
  }

  List<String> _variasImagenesProducto = [];
  List<String> get variasImagenesProducto => _variasImagenesProducto;
  set variasImagenesProducto(List<String> value) {
    _variasImagenesProducto = value;
  }

  void addToVariasImagenesProducto(String value) {
    _variasImagenesProducto.add(value);
  }

  void removeFromVariasImagenesProducto(String value) {
    _variasImagenesProducto.remove(value);
  }

  void removeAtIndexFromVariasImagenesProducto(int index) {
    _variasImagenesProducto.removeAt(index);
  }

  void updateVariasImagenesProductoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _variasImagenesProducto[index] = updateFn(_variasImagenesProducto[index]);
  }

  void insertAtIndexInVariasImagenesProducto(int index, String value) {
    _variasImagenesProducto.insert(index, value);
  }

  String _imagenProducto = '';
  String get imagenProducto => _imagenProducto;
  set imagenProducto(String value) {
    _imagenProducto = value;
  }

  List<String> _etiquetaProducto = [];
  List<String> get etiquetaProducto => _etiquetaProducto;
  set etiquetaProducto(List<String> value) {
    _etiquetaProducto = value;
  }

  void addToEtiquetaProducto(String value) {
    _etiquetaProducto.add(value);
  }

  void removeFromEtiquetaProducto(String value) {
    _etiquetaProducto.remove(value);
  }

  void removeAtIndexFromEtiquetaProducto(int index) {
    _etiquetaProducto.removeAt(index);
  }

  void updateEtiquetaProductoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _etiquetaProducto[index] = updateFn(_etiquetaProducto[index]);
  }

  void insertAtIndexInEtiquetaProducto(int index, String value) {
    _etiquetaProducto.insert(index, value);
  }

  bool _busquedaActiva = false;
  bool get busquedaActiva => _busquedaActiva;
  set busquedaActiva(bool value) {
    _busquedaActiva = value;
  }

  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  set producto(DocumentReference? value) {
    _producto = value;
  }

  String _imagenSubida = '';
  String get imagenSubida => _imagenSubida;
  set imagenSubida(String value) {
    _imagenSubida = value;
  }

  bool _isImagenSubida = false;
  bool get isImagenSubida => _isImagenSubida;
  set isImagenSubida(bool value) {
    _isImagenSubida = value;
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    secureStorage.setString('ff_token', value);
  }

  void deleteToken() {
    secureStorage.delete(key: 'ff_token');
  }

  String _seed = '';
  String get seed => _seed;
  set seed(String value) {
    _seed = value;
  }

  int _nonce = 0;
  int get nonce => _nonce;
  set nonce(int value) {
    _nonce = value;
  }

  List<DocumentReference> _prodAsociado = [];
  List<DocumentReference> get prodAsociado => _prodAsociado;
  set prodAsociado(List<DocumentReference> value) {
    _prodAsociado = value;
  }

  void addToProdAsociado(DocumentReference value) {
    _prodAsociado.add(value);
  }

  void removeFromProdAsociado(DocumentReference value) {
    _prodAsociado.remove(value);
  }

  void removeAtIndexFromProdAsociado(int index) {
    _prodAsociado.removeAt(index);
  }

  void updateProdAsociadoAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _prodAsociado[index] = updateFn(_prodAsociado[index]);
  }

  void insertAtIndexInProdAsociado(int index, DocumentReference value) {
    _prodAsociado.insert(index, value);
  }

  List<VariacionStruct> _variacion = [];
  List<VariacionStruct> get variacion => _variacion;
  set variacion(List<VariacionStruct> value) {
    _variacion = value;
  }

  void addToVariacion(VariacionStruct value) {
    _variacion.add(value);
  }

  void removeFromVariacion(VariacionStruct value) {
    _variacion.remove(value);
  }

  void removeAtIndexFromVariacion(int index) {
    _variacion.removeAt(index);
  }

  void updateVariacionAtIndex(
    int index,
    VariacionStruct Function(VariacionStruct) updateFn,
  ) {
    _variacion[index] = updateFn(_variacion[index]);
  }

  void insertAtIndexInVariacion(int index, VariacionStruct value) {
    _variacion.insert(index, value);
  }

  List<DocumentReference> _variacionesStock = [];
  List<DocumentReference> get variacionesStock => _variacionesStock;
  set variacionesStock(List<DocumentReference> value) {
    _variacionesStock = value;
  }

  void addToVariacionesStock(DocumentReference value) {
    _variacionesStock.add(value);
  }

  void removeFromVariacionesStock(DocumentReference value) {
    _variacionesStock.remove(value);
  }

  void removeAtIndexFromVariacionesStock(int index) {
    _variacionesStock.removeAt(index);
  }

  void updateVariacionesStockAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _variacionesStock[index] = updateFn(_variacionesStock[index]);
  }

  void insertAtIndexInVariacionesStock(int index, DocumentReference value) {
    _variacionesStock.insert(index, value);
  }

  DocumentReference? _variacionStock;
  DocumentReference? get variacionStock => _variacionStock;
  set variacionStock(DocumentReference? value) {
    _variacionStock = value;
  }

  DocumentReference? _productoStock;
  DocumentReference? get productoStock => _productoStock;
  set productoStock(DocumentReference? value) {
    _productoStock = value;
  }

  String _imagenMarca = '';
  String get imagenMarca => _imagenMarca;
  set imagenMarca(String value) {
    _imagenMarca = value;
  }

  List<String> _carruselMarca = [];
  List<String> get carruselMarca => _carruselMarca;
  set carruselMarca(List<String> value) {
    _carruselMarca = value;
  }

  void addToCarruselMarca(String value) {
    _carruselMarca.add(value);
  }

  void removeFromCarruselMarca(String value) {
    _carruselMarca.remove(value);
  }

  void removeAtIndexFromCarruselMarca(int index) {
    _carruselMarca.removeAt(index);
  }

  void updateCarruselMarcaAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _carruselMarca[index] = updateFn(_carruselMarca[index]);
  }

  void insertAtIndexInCarruselMarca(int index, String value) {
    _carruselMarca.insert(index, value);
  }

  DocumentReference? _variacionCrearOrden;
  DocumentReference? get variacionCrearOrden => _variacionCrearOrden;
  set variacionCrearOrden(DocumentReference? value) {
    _variacionCrearOrden = value;
  }

  List<DocumentReference> _selectedItemCrearOrden = [];
  List<DocumentReference> get selectedItemCrearOrden => _selectedItemCrearOrden;
  set selectedItemCrearOrden(List<DocumentReference> value) {
    _selectedItemCrearOrden = value;
  }

  void addToSelectedItemCrearOrden(DocumentReference value) {
    _selectedItemCrearOrden.add(value);
  }

  void removeFromSelectedItemCrearOrden(DocumentReference value) {
    _selectedItemCrearOrden.remove(value);
  }

  void removeAtIndexFromSelectedItemCrearOrden(int index) {
    _selectedItemCrearOrden.removeAt(index);
  }

  void updateSelectedItemCrearOrdenAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _selectedItemCrearOrden[index] = updateFn(_selectedItemCrearOrden[index]);
  }

  void insertAtIndexInSelectedItemCrearOrden(
      int index, DocumentReference value) {
    _selectedItemCrearOrden.insert(index, value);
  }

  BlogStruct _blog = BlogStruct();
  BlogStruct get blog => _blog;
  set blog(BlogStruct value) {
    _blog = value;
  }

  void updateBlogStruct(Function(BlogStruct) updateFn) {
    updateFn(_blog);
  }

  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  set usuario(DocumentReference? value) {
    _usuario = value;
  }

  String _evidenciaSoporte = '';
  String get evidenciaSoporte => _evidenciaSoporte;
  set evidenciaSoporte(String value) {
    _evidenciaSoporte = value;
  }

  List<VentasDiariasStruct> _reportes = [];
  List<VentasDiariasStruct> get reportes => _reportes;
  set reportes(List<VentasDiariasStruct> value) {
    _reportes = value;
    secureStorage.setStringList(
        'ff_reportes', value.map((x) => x.serialize()).toList());
  }

  void deleteReportes() {
    secureStorage.delete(key: 'ff_reportes');
  }

  void addToReportes(VentasDiariasStruct value) {
    _reportes.add(value);
    secureStorage.setStringList(
        'ff_reportes', _reportes.map((x) => x.serialize()).toList());
  }

  void removeFromReportes(VentasDiariasStruct value) {
    _reportes.remove(value);
    secureStorage.setStringList(
        'ff_reportes', _reportes.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromReportes(int index) {
    _reportes.removeAt(index);
    secureStorage.setStringList(
        'ff_reportes', _reportes.map((x) => x.serialize()).toList());
  }

  void updateReportesAtIndex(
    int index,
    VentasDiariasStruct Function(VentasDiariasStruct) updateFn,
  ) {
    _reportes[index] = updateFn(_reportes[index]);
    secureStorage.setStringList(
        'ff_reportes', _reportes.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInReportes(int index, VentasDiariasStruct value) {
    _reportes.insert(index, value);
    secureStorage.setStringList(
        'ff_reportes', _reportes.map((x) => x.serialize()).toList());
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
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
