import 'package:app_finance/src/core/config/api_config.dart';
import 'package:app_finance/src/modules/home/models/movimentacao_request.dart';
import 'package:app_finance/src/modules/home/models/movimentacao_response.dart';
import 'package:dio/dio.dart';

class MovimentacaoService {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiConfig.baseUrl));

  Future<String> registrarMovimentcao(MovimentacaoRequest request) async {
    print(request.toJson().toString());
    final response = await _dio.post(
      '/movimentacao',
      data: request.toJson(),

      options: Options(headers: {'Authorization': 'Bearer ${ApiConfig.token}'}),
    );
    return response.data;
  }

  Future<List<MovimentacaoResponse>> buscarMovimentacoes() async {
    final response = await _dio.get(
      '/movimentacao',
      options: Options(headers: {'Authorization': 'Bearer ${ApiConfig.token}'}),
    );

    final List<dynamic> data = response.data;

    print(response.data);

    return data.map((json) => MovimentacaoResponse.fromJson(json)).toList();
  }
}
