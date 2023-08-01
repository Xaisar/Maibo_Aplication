import 'package:get/get.dart';

import '../models/register_model.dart';

class RegisterProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Register.fromJson(map);
      if (map is List)
        return map.map((item) => Register.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Register?> getRegister(int id) async {
    final response = await get('register/$id');
    return response.body;
  }

  Future<Response<Register>> postRegister(Register register) async =>
      await post('register', register);
  Future<Response> deleteRegister(int id) async => await delete('register/$id');
}
