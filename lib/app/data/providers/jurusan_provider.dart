import 'package:get/get.dart';

import '../models/jurusan_model.dart';

class JurusanProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Jurusan.fromJson(map);
      if (map is List)
        return map.map((item) => Jurusan.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Jurusan?> getJurusan(int id) async {
    final response = await get('jurusan/$id');
    return response.body;
  }

  Future<Response<Jurusan>> postJurusan(Jurusan jurusan) async =>
      await post('jurusan', jurusan);
  Future<Response> deleteJurusan(int id) async => await delete('jurusan/$id');
}
