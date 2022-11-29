import 'package:tera_store/app/constants.dart';

extension NonNullableString on String? {
  String orEmpty() {
    if (this == null) {
      return Constants.empty;
    } else {
      return this!;
    }
  }
}

extension NonNullableInteger on int? {
  int onZero() {
    if (this == null) {
      return Constants.zero;
    } else {
      return this!;
    }
  }
}
