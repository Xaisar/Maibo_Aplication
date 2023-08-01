import 'package:get/get.dart';

import '../models/rekrutmen_model.dart';

class RekrutmenProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Rekrutmen.fromJson(map);
      if (map is List)
        return map.map((item) => Rekrutmen.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Rekrutmen?> getRekrutmen(int id) async {
    final response = await get('rekrutmen/$id');
    return response.body;
  }

  Future<Response<Rekrutmen>> postRekrutmen(Rekrutmen rekrutmen) async =>
      await post('rekrutmen', rekrutmen);
  Future<Response> deleteRekrutmen(int id) async =>
      await delete('rekrutmen/$id');
}
