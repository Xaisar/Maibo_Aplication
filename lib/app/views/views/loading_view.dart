import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

class LoadingView extends GetView {
  const LoadingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: grey2,
        body: Center(
            child: SpinKitFoldingCube(
          color: blue,
          size: Get.width * 0.1,
        )));
  }
}
