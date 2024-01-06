import 'package:dio/dio.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:gelivery_myanmar_test/data/responses/auth_response.dart';
import 'package:gelivery_myanmar_test/data/responses/item_response.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

part 'api_service.g.dart';

@retrofit.RestApi()
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @retrofit.POST("/v3/user/")
  Future<AuthResponse> login(@retrofit.Body() Map<String, dynamic> body);

  @retrofit.POST("/v3/user/refresh_token")
  Future<AuthResponse> refreshToken(@retrofit.Body() Map<String, dynamic> body);

  @retrofit.POST("/v4/pickup/list")
  Future<PickupItemResponse> getPickList(@retrofit.Field("first") int first,
      {@retrofit.Field("max") int max = 10});

  @retrofit.POST("/v3/user/revoke_access_token_by_username")
  Future<AuthResponse> revokeToken(@retrofit.Body() Map<String, dynamic> body);
}
