import 'package:get/get.dart';

import '../models/event_model.dart';

class EventProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Event.fromJson(map);
      if (map is List) return map.map((item) => Event.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Event?> getEvent(int id) async {
    final response = await get('event/$id');
    return response.body;
  }

  Future<Response<Event>> postEvent(Event event) async =>
      await post('event', event);
  Future<Response> deleteEvent(int id) async => await delete('event/$id');
}
