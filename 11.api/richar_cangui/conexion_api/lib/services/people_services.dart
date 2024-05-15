import 'package:conexion_api/models/people_model_quicktype.dart';
import 'package:dio/dio.dart';

class PeopleServices {
  /// instanciar dio -> herramienta
  /// metodo
  /// control error

  final dio = Dio();

  // void getHttp() async {
  //   try {
  //     final response = await dio.get('https://dart.devsz');
  //     print(response);
  //   } on DioException catch (e) {
  //     print("Error dio: $e");
  //   } catch (err) {
  //     print("ERROR CATCH: $err");
  //   }
  // }

  Future<PeopleModel> getPeople(int id) async {
    try {
      final url = 'https://swapi.dev/api/people/$id/';
      final response = await dio.get(url);
      return PeopleModel.fromJson(response.data);
    } on DioException catch (err) {
      print("Ha ocurrido un error en dio: $err");
      rethrow;
    } catch (err) {
      print("Ha ocurrido un error diferente: $err");
      rethrow;
    }
  }
}
