import '../../routes/router_info.dart';
import '../../util/map_extention.dart';

abstract class DetailRoute {
  static String path({int? id}) => '/detail/${id ?? ':${DetailInput.idKey}'}';
}

typedef DetailRouteInfo = RouteInfo<DetailInput, DetailOutput>;

class DetailInput extends RouteInput {
  static const idKey = 'id';
  static const flagKey = 'flag';
  static const countryKey = 'country';
  static const weightKey = 'weight';

  final int id;
  final bool flag;
  final String country;
  final double weight;

  DetailInput({
    required this.id,
    this.flag = false,
    this.country = '',
    this.weight = 0,
  });

  factory DetailInput.fromMap(Map<String, dynamic> parameters) {
    return DetailInput(
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

class DetailOutput {
  final String message;

  const DetailOutput({
    required this.message,
  });
}
