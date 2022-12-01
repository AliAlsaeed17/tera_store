import 'package:tera_store/data/network/fauilure.dart';
import 'package:dartz/dartz.dart';
import 'package:tera_store/data/network/requests.dart';
import 'package:tera_store/domain/models/model.dart';
import 'package:tera_store/domain/repositories/repository.dart';

import 'base_usecase.dart';

class LoginUseCase implements BaseUseCase<LoginUseCaseInput, Authentication> {
  Repository _repository;
  LoginUseCase(this._repository);
  @override
  Future<Either<Failure, Authentication>> execute(
      LoginUseCaseInput input) async {
    return await _repository.login(
      LoginRequest(
        email: input.email,
        password: input.password,
      ),
    );
  }
}

class LoginUseCaseInput {
  String email;
  String password;
  LoginUseCaseInput({
    required this.email,
    required this.password,
  });
}
