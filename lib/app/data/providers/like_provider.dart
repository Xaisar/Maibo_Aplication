import 'package:get/get.dart';

import '../models/like_model.dart';

class LikeProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Like.fromJson(map);
      if (map is List) return map.map((item) => Like.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Like?> getLike(int id) async {
    final response = await get('like/$id');
    return response.body;
  }

  Future<Response<Like>> postLike(Like like) async => await post('like', like);
  Future<Response> deleteLike(int id) async => await delete('like/$id');
}
