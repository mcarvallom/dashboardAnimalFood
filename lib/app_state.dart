import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

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
    prefs.setString('ff_token', _value);
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
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
