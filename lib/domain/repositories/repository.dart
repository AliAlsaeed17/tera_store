import 'package:dartz/dartz.dart';
import 'package:tera_store/data/network/fauilure.dart';
import 'package:tera_store/data/network/requests.dart';
import 'package:tera_store/domain/models/model.dart';

abstract class Repository {
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest);
}
