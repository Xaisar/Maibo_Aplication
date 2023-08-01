import 'package:get/get.dart';

import '../models/postingan_model.dart';

class PostinganProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Postingan.fromJson(map);
      if (map is List)
        return map.map((item) => Postingan.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Postingan?> getPostingan(int id) async {
    final response = await get('postingan/$id');
    return response.body;
  }

  Future<Response<Postingan>> postPostingan(Postingan postingan) async =>
      await post('postingan', postingan);
  Future<Response> deletePostingan(int id) async =>
      await delete('postingan/$id');
}
