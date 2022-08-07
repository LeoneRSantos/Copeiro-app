import 'package:dio/dio.dart';
import '../excecoes/excecoes.dart';
import '../modelos/modelo_tabela.dart';

abstract class Repositorio<T> {
  Future<List<T>?> getTabela();
  Dio dio = Dio();
}

class RepositorioTabelaBrasileirao extends Repositorio<Standings> {
  @override
  Future<List<Standings>?> getTabela() async {
    Response resposta;
    try {
      resposta = await dio.get(
          'https://app.sportdataapi.com/api/v1/soccer/standings?apikey=143cd3d0-fbc2-11ec-bf95-532befddefc2&season_id=3009');
      if (resposta.statusCode == 200) {
        return Tabela.fromJson(resposta.data).data?.standings;
      }
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
    return Data(
      standings: [Standings(status: 'fedf')],
    ).standings!;
  }
}