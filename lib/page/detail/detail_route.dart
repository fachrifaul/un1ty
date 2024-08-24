import '../../util/map_extention.dart';

abstract class DetailRoute {
  static String path({int? id}) => '/detail/${id ?? ':${DetailInput.idKey}'}';
}

class DetailInput {
  static const idKey = 'id';
  static const flagKey = 'flag';
  static const countryKey = 'country';
  static const weightKey = 'weight';

  final int id;
  final bool flag;
  final String country;
  final double weight;

  const DetailInput({
    required this.id,
    this.flag = false,
    this.country = '',
    this.weight = 0,
  });

  factory DetailInput.fromMap(Map<String, String?> parameters) {
    return DetailInput(
      id: parameters.optInt(idKey),
      flag: parameters.optBool(flagKey),
      country: parameters.optString(countryKey),
      weight: parameters.optDouble(weightKey),
    );
  }

  Map<String, String>? toMap() {
    return {
      idKey: id.toString(),
      flagKey: flag.toString(),
      countryKey: country.toString(),
      weightKey: weight.toString(),
    };
  }
}
