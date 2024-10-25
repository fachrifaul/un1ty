import '../../routes/router_info.dart';
import '../../util/map_extention.dart';

abstract class GalleryRoute {
  static String path({int? id}) => '/gallery/${id ?? ':${GalleryInput.idKey}'}';
}

typedef GalleryRouteInfo = RouteInfo<GalleryInput, GalleryOutput>;

class GalleryInput extends RouteInput {
  static const idKey = 'id';
  static const flagKey = 'flag';
  static const countryKey = 'country';
  static const weightKey = 'weight';

  final int id;
  final bool flag;
  final String country;
  final double weight;

  GalleryInput({
    required this.id,
    this.flag = false,
    this.country = '',
    this.weight = 0,
  });

  factory GalleryInput.fromMap(Map<String, dynamic> parameters) {
    return GalleryInput(
      id: parameters.optInt(idKey),
      flag: parameters.optBool(flagKey),
      country: parameters.optString(countryKey),
      weight: parameters.optDouble(weightKey),
    );
  }

  @override
  Map<String, String> toMap() {
    return {
      idKey: id.toString(),
      flagKey: flag.toString(),
      countryKey: country.toString(),
      weightKey: weight.toString(),
    };
  }
}

class GalleryOutput {
  final String message;

  GalleryOutput({
    required this.message,
  });
}
