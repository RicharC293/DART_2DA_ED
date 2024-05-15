import 'package:conexion_api/conexion_api.dart' as conexion_api;
import 'package:conexion_api/services/people_services.dart';

Future<void> main(List<String> arguments) async {
  print('Hello world: ${conexion_api.calculate()}!');
  final peopleServices = PeopleServices();
  final people1 = await peopleServices.getPeople(4);
  print(people1.name);
}
