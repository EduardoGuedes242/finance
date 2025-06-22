import 'package:app_finance/src/core/config/api_config.dart';
import 'package:dio/dio.dart';
import '../models/login_request.dart';
import '../models/login_response.dart';

class AuthService {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiConfig.baseUrl));

  Future<LoginResponse> login(LoginRequest request) async {
    final response = await _dio.post('/auth', data: request.toJson());
    return LoginResponse.fromJson(response.data);
  }
}
