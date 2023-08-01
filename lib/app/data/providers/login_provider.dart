import 'package:get/get.dart';
import 'package:maibo/theme.dart';
import '../models/login_model.dart';

class LoginProvider extends GetConnect {
  // @override
  // void onInit() {
  //   httpClient.defaultDecoder = (map) {
  //     if (map is Map<String, dynamic>) return Login.fromJson(map);
  //     if (map is List) return map.map((item) => Login.fromJson(item)).toList();
  //   };
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }

  // Future<Login?> getLogin(int id) async {
  //   final response = await get('login/$id');
  //   return response.body;
  // }

  Future<dynamic> postlogin(String email, String password) async {
    var data = {"username": email, "password": password};
    final response = await post("$link/api/maibo/login", data,
        headers: {"accept": "apllication/json"});
    print(response.body);
    return response.body;
  }

  // Future<Response<Login>> postLogin(Login login) async =>
  //     await post('login', login);
  // Future<Response> deleteLogin(int id) async => await delete('login/$id');
}
