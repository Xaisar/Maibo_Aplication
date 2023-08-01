import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Item/post_item.dart';
import 'package:maibo/theme.dart';
import 'package:get/get.dart';

import '../controllers/detail_post_mahasiswa_controller.dart';
import 'item/comment_post.dart';

class DetailPostMahasiswaView extends GetView<DetailPostMahasiswaController> {
  const DetailPostMahasiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              )),
          title: Text("Back",
              style: GoogleFonts.dmSans(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
          backgroundColor: blue,
          elevation: 0,
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Align(alignment: Alignment.bottomCenter, child: textfield()),
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return (index == 0
                      ? Column(children: [PostItemView(), CommentPostView()])
                      : (index == 4
                          ? Column(children: [CommentPostView(), textfield()])
                          : CommentPostView()));
                })
          ],
        ));
  }

  Container textfield() {
    return Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
        width: Get.width,
        color: Colors.white,
        child: Row(
          children: [
            const CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage("assets/images/image1.jpg"),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: TextField(
                keyboardType: TextInputType.text,
                onChanged: (value) {},
                onSubmitted: (value) {},
                style: GoogleFonts.dmSans(fontSize: 14),
                decoration: InputDecoration(
                    hintText: 'Balas Pemilik Akun', focusColor: blue),
              ),
            ),
          ],
        ));
  }
}
