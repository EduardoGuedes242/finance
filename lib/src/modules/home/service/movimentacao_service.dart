import 'package:app_finance/src/core/config/api_config.dart';
import 'package:app_finance/src/modules/home/models/movimentacao_request.dart';
import 'package:app_finance/src/modules/home/models/movimentacao_response.dart';
import 'package:app_finance/src/modules/home/models/totalizador_response.dart';
import 'package:dio/dio.dart';

class MovimentacaoService {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiConfig.baseUrl));

  Future<String> registrarMovimentcao(MovimentacaoRequest request) async {
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

    return data.map((json) => MovimentacaoResponse.fromJson(json)).toList();
  }

  Future<TotalizadorResponse> buscarTotalizador() async {
    final response = await _dio.get(
      '/movimentacao/totalizador',
      options: Options(headers: {'Authorization': 'Bearer ${ApiConfig.token}'}),
    );

    return TotalizadorResponse.fromJson(response.data);
  }
}
