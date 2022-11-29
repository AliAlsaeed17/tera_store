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

extension ContactResponseMapper on ContactResponse? {
  Contact toDomain() {
    // convert response to model
    // this represent CustomerResponse Object
    return Contact(
      phone: this?.phone.orEmpty() ?? Constants.empty,
      email: this?.email.orEmpty() ?? Constants.empty,
      link: this?.link.orEmpty() ?? Constants.empty,
    );
  }
}
