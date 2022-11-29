import 'package:tera_store/data/network/requests.dart';
import 'package:tera_store/data/reposponse/responses.dart';
import 'package:tera_store/domain/models/model.dart';

abstract class RemoteDataSource {
  Future<AuthenticationResponse> login(LoginRequest loginRequest);
}
