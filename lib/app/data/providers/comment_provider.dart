import 'package:get/get.dart';

import '../models/comment_model.dart';

class CommentProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Comment.fromJson(map);
      if (map is List)
        return map.map((item) => Comment.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Comment?> getComment(int id) async {
    final response = await get('comment/$id');
    return response.body;
  }

  Future<Response<Comment>> postComment(Comment comment) async =>
      await post('comment', comment);
  Future<Response> deleteComment(int id) async => await delete('comment/$id');
}
