import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

import '../controllers/post_mahasiswa_controller.dart';
import 'Item/post_item.dart';

class PostMahasiswaView extends GetView<PostMahasiswaController> {
  PostMahasiswaView({Key? key}) : super(key: key);
  final postc = PostMahasiswaController();
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
          itemCount: postc.post.length,
          itemBuilder: (context, index) {
            return (index == postc.post.length - 1
                ? Column(
                    children: [
                      PostItemView(
                        postingan: postc.post[index],
                      ),
                      Container(
                        color: Colors.white,
                        height: 22,
                        width: Get.width,
                      )
                    ],
                  )
                : PostItemView(postingan: postc.post[index]));
          },
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(items:)
    );
  }
}
