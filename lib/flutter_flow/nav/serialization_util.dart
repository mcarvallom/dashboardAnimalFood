import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

import '/backend/supabase/supabase.dart';

import '../../flutter_flow/place.dart';
import '../../flutter_flow/uploaded_file.dart';

/// SERIALIZATION HELPERS

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

String? serializeParam(
  dynamic param,
  ParamType paramType, {
  bool isList = false,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final serializedValues = (param as Iterable)
          .map((p) => serializeParam(p, paramType, isList: false))
          .where((p) => p != null)
          .map((p) => p!)
          .toList();
      return json.encode(serializedValues);
    }
    String? data;
    switch (paramType) {
      case ParamType.int:
        data = param.toString();
      case ParamType.double:
        data = param.toString();
      case ParamType.String:
        data = param;
      case ParamType.bool:
        data = param ? 'true' : 'false';
      case ParamType.DateTime:
        data = (param as DateTime).millisecondsSinceEpoch.toString();
      case ParamType.DateTimeRange:
        data = dateTimeRangeToString(param as DateTimeRange);
      case ParamType.LatLng:
        data = (param as LatLng).serialize();
      case ParamType.Color:
        data = (param as Color).toCssString();
      case ParamType.FFPlace:
        data = placeToString(param as FFPlace);
      case ParamType.FFUploadedFile:
        data = uploadedFileToString(param as FFUploadedFile);
      case ParamType.JSON:
        data = json.encode(param);

      case ParamType.SupabaseRow:
        return json.encode((param as SupabaseDataRow).data);

      default:
        data = null;
    }
    return data;
  } catch (e) {
    print('Error serializing parameter: $e');
    return null;
  }
}

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

enum ParamType {
  int,
  double,
  String,
  bool,
  DateTime,
  DateTimeRange,
  LatLng,
  Color,
  FFPlace,
  FFUploadedFile,
  JSON,

  SupabaseRow,
}

dynamic deserializeParam<T>(
  String? param,
  ParamType paramType,
  bool isList,
) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final paramValues = json.decode(param);
      if (paramValues is! Iterable || paramValues.isEmpty) {
        return null;
      }
      return paramValues
          .where((p) => p is String)
          .map((p) => p as String)
          .map((p) => deserializeParam<T>(p, paramType, false))
          .where((p) => p != null)
          .map((p) => p! as T)
          .toList();
    }
    switch (paramType) {
      case ParamType.int:
        return int.tryParse(param);
      case ParamType.double:
        return double.tryParse(param);
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param == 'true';
      case ParamType.DateTime:
        final milliseconds = int.tryParse(param);
        return milliseconds != null
            ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
            : null;
      case ParamType.DateTimeRange:
        return dateTimeRangeFromString(param);
      case ParamType.LatLng:
        return latLngFromString(param);
      case ParamType.Color:
        return fromCssColor(param);
      case ParamType.FFPlace:
        return placeFromString(param);
      case ParamType.FFUploadedFile:
        return uploadedFileFromString(param);
      case ParamType.JSON:
        return json.decode(param);

      case ParamType.SupabaseRow:
        final data = json.decode(param) as Map<String, dynamic>;
        switch (T) {
          case MediodepagoRow:
            return MediodepagoRow(data);
          case PlanEmpresaRow:
            return PlanEmpresaRow(data);
          case CategoraRow:
            return CategoraRow(data);
          case OrdenRow:
            return OrdenRow(data);
          case TerminosycondicionesWebRow:
            return TerminosycondicionesWebRow(data);
          case EntregaFallidaRow:
            return EntregaFallidaRow(data);
          case CertificadoDigitalRow:
            return CertificadoDigitalRow(data);
          case WebRow:
            return WebRow(data);
          case PasUserEncripRow:
            return PasUserEncripRow(data);
          case CafRow:
            return CafRow(data);
          case ProveedoresRow:
            return ProveedoresRow(data);
          case RedesSocialesRow:
            return RedesSocialesRow(data);
          case PreguntasFrecuentesRow:
            return PreguntasFrecuentesRow(data);
          case TarjetaUsuarioRow:
            return TarjetaUsuarioRow(data);
          case NavBarWebRow:
            return NavBarWebRow(data);
          case ValorMonedaRow:
            return ValorMonedaRow(data);
          case AsistenciaRow:
            return AsistenciaRow(data);
          case HistorialPagosPlanRow:
            return HistorialPagosPlanRow(data);
          case ProductoRow:
            return ProductoRow(data);
          case IntegracionesRow:
            return IntegracionesRow(data);
          case EmpresaRow:
            return EmpresaRow(data);
          case ProductosmasvendidosmesRow:
            return ProductosmasvendidosmesRow(data);
          case RegionRow:
            return RegionRow(data);
          case CarritoRow:
            return CarritoRow(data);
          case MenuWebRow:
            return MenuWebRow(data);
          case SiiRow:
            return SiiRow(data);
          case PasareladepagoDefaultRow:
            return PasareladepagoDefaultRow(data);
          case FaqRow:
            return FaqRow(data);
          case MediodepagoDefaultRow:
            return MediodepagoDefaultRow(data);
          case CarpetasRow:
            return CarpetasRow(data);
          case InicioWebRow:
            return InicioWebRow(data);
          case SucursalRow:
            return SucursalRow(data);
          case DetallePagoPlanRow:
            return DetallePagoPlanRow(data);
          case ResumendiarioRow:
            return ResumendiarioRow(data);
          case LugarMesaRow:
            return LugarMesaRow(data);
          case TokensSimplefacturaRow:
            return TokensSimplefacturaRow(data);
          case HorarioSucursalRow:
            return HorarioSucursalRow(data);
          case ClavespasareladepagoRow:
            return ClavespasareladepagoRow(data);
          case VentasEntradasRow:
            return VentasEntradasRow(data);
          case PasswordResetRequestsRow:
            return PasswordResetRequestsRow(data);
          case GaleriaEmpresaRow:
            return GaleriaEmpresaRow(data);
          case PortadaRow:
            return PortadaRow(data);
          case PlanesRestifyRow:
            return PlanesRestifyRow(data);
          case MesaRow:
            return MesaRow(data);
          case ResumenmensualRow:
            return ResumenmensualRow(data);
          case CodigosGeneradosRow:
            return CodigosGeneradosRow(data);
          case DocumentosEmitidosRow:
            return DocumentosEmitidosRow(data);
          case PaginasWebRow:
            return PaginasWebRow(data);
          case CarritoItemsRow:
            return CarritoItemsRow(data);
          case OrdenItemsRow:
            return OrdenItemsRow(data);
          case TokensRow:
            return TokensRow(data);
          case ArchivosCarpetaRow:
            return ArchivosCarpetaRow(data);
          case UserRow:
            return UserRow(data);
          case DatosTransferenciaBancariaRow:
            return DatosTransferenciaBancariaRow(data);
          case CiudadRow:
            return CiudadRow(data);
          case RolRow:
            return RolRow(data);
          case CartaRestauranteRow:
            return CartaRestauranteRow(data);
          case VariacionRow:
            return VariacionRow(data);
          case FooterWebRow:
            return FooterWebRow(data);
          case TipoEmpresaRow:
            return TipoEmpresaRow(data);
          case IntegracionesDefaultRow:
            return IntegracionesDefaultRow(data);
          case EventosRow:
            return EventosRow(data);
          case PasareladepagoRow:
            return PasareladepagoRow(data);
          case ContactoRow:
            return ContactoRow(data);
          default:
            return null;
        }

      default:
        return null;
    }
  } catch (e) {
    print('Error deserializing parameter: $e');
    return null;
  }
}
