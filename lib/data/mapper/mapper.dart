import 'package:tera_store/domain/model.dart';
import '../../app/extensions.dart';

extension CustomerResponseMapper on Customer {
  Customer toDomain() {
    // convert response to model
    // this represent CustomerResponse Object
    return Customer(
      id: this?.id.orEmpty() ?? "",
      name: this?.name.orEmpty() ?? "",
      numOfNotifications: this?.numOfNotifications.onZero() ?? 0,
    );
  }
}
