import 'package:tera_store/app/constants.dart';
import 'package:tera_store/data/reposponse/responses.dart';
import 'package:tera_store/domain/model.dart';
import '../../app/extensions.dart';

extension CustomerResponseMapper on CustomerResponse? {
  Customer toDomain() {
    // convert response to model
    // this represent CustomerResponse Object
    return Customer(
      id: this?.id.orEmpty() ?? Constants.empty,
      name: this?.name.orEmpty() ?? Constants.empty,
      numOfNotifications: this?.numOfNotifications.onZero() ?? Constants.zero,
    );
  }
}
