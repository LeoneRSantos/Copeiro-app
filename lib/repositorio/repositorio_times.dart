import 'package:dio/dio.dart';

import '../excecoes/excecoes.dart';
import '../modelos/modelo_times.dart';





abstract class Repositorio<T> {
  Future<List<T>> getAllTImes(int id);
  Dio dio = Dio();
}

class RepositorioTimesBrasileiro extends Repositorio<Data> {
  @override
  Future<List<Data>> getAllTImes(int id) async {
    Response resposta;

    try {
      resposta = await dio.get(
          'https://app.sportdataapi.com/api/v1/soccer/teams?apikey=143cd3d0-fbc2-11ec-bf95-532befddefc2&country_id=$id');
      if (resposta.statusCode == 200) {
        return ModelTimesBrasileiros.fromJson(resposta.data).data!;
      }
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
    return ModelTimesBrasileiros(
      data: [Data(commonName: 'fedf')],
    ).data!;
  }
}