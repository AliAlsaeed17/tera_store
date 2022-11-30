import 'package:dio/dio.dart';
import 'package:tera_store/data/data_source/remote_data_source.dart';
import 'package:tera_store/data/mapper/mapper.dart';
import 'package:tera_store/data/network/network_info.dart';
import 'package:tera_store/domain/models/model.dart';
import 'package:tera_store/data/network/requests.dart';
import 'package:tera_store/data/network/fauilure.dart';
import 'package:dartz/dartz.dart';
import 'package:tera_store/domain/repositories/repository.dart';

class RepositoryImpl implements Repository {
  RemoteDataSource _remoteDataSource;
  NetworkInfo _networkInfo;

  RepositoryImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, Authentication>> login(
      LoginRequest loginRequest) async {
    if (await _networkInfo.isConnected) {
      // Its connected to internet so its save to call api
      final response = await _remoteDataSource.login(loginRequest);
      if (response.status == 0) {
        // success
        // return data (either right)
        return Right(response.toDomain());
      } else {
        // failure
        // returm either right
        return Left(
          Failure(
            code: 409,
            message: response.message ?? "Bussines error message",
          ),
        );
      }
    } else {
      // return internet connection error
      // return either left
      return Left(
        Failure(
          code: 501,
          message: "Check your internet connection",
        ),
      );
    }
  }
}
