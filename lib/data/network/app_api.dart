import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tera_store/app/constants.dart';
import 'package:tera_store/data/reposponse/responses.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String? baseUrl}) = _AppServiceClient;

  @POST('/customers/login')
  Future<AuthenticationResponse> login(String email, String password);
}
