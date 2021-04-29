import 'package:collection/collection.dart' show IterableExtension;

class EnumUtil {
  String string(Object? o) => o.toString().split('.').last;

  String fullString(Object? o) => o.toString();

  T? fromString<T>(String? key, List<T> values) =>
      values.firstWhereOrNull((v) => key == string(v));
}

final EnumUtil enumUtil = EnumUtil();
