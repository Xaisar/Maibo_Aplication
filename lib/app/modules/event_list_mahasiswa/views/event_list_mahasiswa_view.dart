import 'package:flutter/material.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

import '../controllers/event_list_mahasiswa_controller.dart';
import 'item/event_list_item.dart';

class EventListMahasiswaView extends GetView<EventListMahasiswaController> {
  const EventListMahasiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (context, index) {
        return Divider(
          height: 2,
          color: grey1,
        );
      },
      itemBuilder: (context, index) {
        return const EventListItemView();
      },
    );
  }
}
