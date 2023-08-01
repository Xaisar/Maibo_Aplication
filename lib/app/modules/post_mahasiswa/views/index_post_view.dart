import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maibo/app/views/views/loading_view.dart';

import 'post_mahasiswa_view.dart';

class IndexpostView extends GetView {
  const IndexpostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 3)),
        // future: Future.sync(() {}).then((value) {}),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingView();
          } else {
            return PostMahasiswaView();
          }
        });
  }
}
