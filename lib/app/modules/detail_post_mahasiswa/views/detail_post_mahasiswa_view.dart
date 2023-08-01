import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';
import 'package:get/get.dart';

import '../controllers/detail_post_mahasiswa_controller.dart';
import 'item/comment_post.dart';
import 'item/post_item1.dart';

class DetailPostMahasiswaView extends GetView<DetailPostMahasiswaController> {
  DetailPostMahasiswaView({Key? key}) : super(key: key);
  final detailpostc = DetailPostMahasiswaController();

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
                itemCount: 1,
                itemBuilder: (context, index) {
                  // return (index == 0
                  //     ? Column(children: [
                  //         ItemView(
                  //           post: detailpostc.post,
                  //         ),
                  //         CommentPost(
                  //             balas: detailpostc.post.comment?[index],
                  //             gambar: "assets/images/image2.jpg"),
                  //         textfield()
                  //       ])
                  //     : Column(children: [
                  //         CommentPost(
                  //           balas: detailpostc.post.comment?[index],
                  //           gambar: "assets/images/image2.jpg",
                  //         ),
                  //         textfield()
                  //       ]));
                  return Column(children: [
                    ItemView(
                      post: detailpostc.post,
                    ),
                    CommentPost(
                        balas: detailpostc.post.comment?[index],
                        gambar: "assets/images/image2.jpg"),
                    CommentPost(
                        balas: detailpostc.post.comment?[1],
                        gambar: "assets/images/image1.jpg"),
                    CommentPost(
                        balas: detailpostc.post.comment?[2],
                        gambar: "assets/images/image2.jpg"),
                    CommentPost(
                        balas: detailpostc.post.comment?[3],
                        gambar: "assets/images/image1.jpg"),
                    textfield(),
                  ]);
                })
          ],
        )
        // body: SingleChildScrollView(
        //   child: Column(children: [
        //     PostItem(
        //       post: detailpostc.post,
        //     ),
        //     CommentPostView(),
        //     CommentPostView(),
        //     textfield()
        //   ]),
        // ),
        );
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
