import 'package:get/get.dart';

import '../models/kampus_model.dart';

class KampusProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Kampus.fromJson(map);
      if (map is List) return map.map((item) => Kampus.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Kampus?> getKampus(int id) async {
    final response = await get('kampus/$id');
    return response.body;
  }

  Future<Response<Kampus>> postKampus(Kampus kampus) async =>
      await post('kampus', kampus);
  Future<Response> deleteKampus(int id) async => await delete('kampus/$id');
}
