import 'package:dartz/dartz.dart';
import 'package:tera_store/data/network/fauilure.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> execute(In input);
}
