import 'package:dio/dio.dart';

import '../modelos/modelo_lista_de_partidas.dart';

abstract class Repositorio<T> {
  Future<List<T>> getAll();
  Dio dio = Dio();
}

class RepositorioListaDePartida extends Repositorio<PartidaUnica> {
  @override
  Future<List<PartidaUnica>> getAll() async {
    Response resposta;

    try {
      resposta = await dio.get(
          'https://app.sportdataapi.com/api/v1/soccer/matches?apikey=143cd3d0-fbc2-11ec-bf95-532befddefc2&season_id=3009&date_to=2022-07-09');
      if (resposta.statusCode == 200) {
        return ListaDePartidas.fromJson(resposta.data).data!;
      }
    } on DioError catch (e) {
      return ListaDePartidas(
        data: [PartidaUnica(status: 'fedf')],
      ).data!;
    }
    String fato = 'Fato avulso';
    return ListaDePartidas(
      data: [PartidaUnica(status: 'fedf')],
    ).data!;
  }
}
