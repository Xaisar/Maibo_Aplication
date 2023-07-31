import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

import '../controllers/post_mahasiswa_controller.dart';
import 'Item/post_item.dart';

class PostMahasiswaView extends GetView<PostMahasiswaController> {
  const PostMahasiswaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey1,
      body: RefreshIndicator(
        onRefresh: () {
          return Future.delayed(const Duration(seconds: 5));
        },
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, index) {
            return const Divider(height: 5);
          },
          itemCount: 5,
          itemBuilder: (context, index) {
            return (index == 4
                ? Column(
                    children: [
                      PostItemView(),
                      Container(
                        color: Colors.white,
                        height: 22,
                        width: Get.width,
                      )
                    ],
                  )
                : PostItemView());
          },
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(items:)
    );
  }
}
