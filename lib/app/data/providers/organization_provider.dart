import 'package:get/get.dart';

import '../models/organization_model.dart';

class OrganizationProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Organization.fromJson(map);
      if (map is List)
        return map.map((item) => Organization.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Organization?> getOrganization(int id) async {
    final response = await get('organization/$id');
    return response.body;
  }

  Future<Response<Organization>> postOrganization(
          Organization organization) async =>
      await post('organization', organization);
  Future<Response> deleteOrganization(int id) async =>
      await delete('organization/$id');
}
