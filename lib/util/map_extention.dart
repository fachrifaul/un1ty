extension MapExtension<T> on Map<T, T> {
  String? getString(String key) {
    return this[key] is String ? this[key]! as String : null;
  }

  String optString(String key, {String defaultValue = defaultString}) {
    return getString(key) ?? defaultValue;
  }

  int? getInt(String key) {
    return containsKey(key) ? int.tryParse('${this[key]}') : null;
  }

  int optInt(String key, {int defaultValue = defaultInt}) {
    return getInt(key) ?? defaultValue;
  }

  double? getDouble(String key) {
    return containsKey(key) ? double.tryParse('${this[key]}') : null;
  }

  double optDouble(String key, {double defaultValue = defaultDouble}) {
    return getDouble(key) ?? defaultValue;
  }

  bool? getBool(String key) {
    final value = this[key];
    if (value == null) return null;
    if (value is String) {
      if (value == "1" || value.toLowerCase() == "true") return true;
      if (value == "0" || value.toLowerCase() == "false") return false;
    }
    return null;
  }

  bool optBool(String key, {bool defaultValue = defaultBool}) {
    return getBool(key) ?? defaultValue;
  }

  static const String defaultString = "";
  static const int defaultInt = 0;
  static const double defaultDouble = 0.0;
  static const bool defaultBool = false;
}
