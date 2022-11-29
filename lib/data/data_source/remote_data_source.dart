import 'package:tera_store/data/network/app_api.dart';
import 'package:tera_store/data/network/requests.dart';
import 'package:tera_store/data/reposponse/responses.dart';
import 'package:tera_store/domain/models/model.dart';

abstract class RemoteDataSource {
  Future<AuthenticationResponse> login(LoginRequest loginRequest);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final AppServiceClient _appServiceClient;

  RemoteDataSourceImpl(this._appServiceClient);

  @override
  Future<AuthenticationResponse> login(LoginRequest loginRequest) async {
    return await _appServiceClient.login(
        loginRequest.email, loginRequest.password);
  }
}
