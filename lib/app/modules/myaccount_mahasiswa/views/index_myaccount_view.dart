import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maibo/app/modules/myaccount_mahasiswa/views/myaccount_mahasiswa_view.dart';

import '../../../views/views/loading_view.dart';

class IndexMyaccountView extends GetView {
  const IndexMyaccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 10)),
        // future: Future.sync(() {}).then((value) {}),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingView();
          } else {
            return const MyaccountMahasiswaView();
          }
        });
  }
}