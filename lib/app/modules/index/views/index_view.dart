import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maibo/app/modules/login/views/login_view.dart';
import 'package:maibo/app/views/views/splashscreen_view.dart';

import '../controllers/index_controller.dart';

class IndexView extends GetView<IndexController> {
  const IndexView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 4)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashscreenView();
          } else {
            return LoginView();
          }
        });
  }
}
