import 'package:flutter/material.dart';

import 'package:get/get.dart';

class IndexEventView extends GetView {
  const IndexEventView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IndexEventView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'IndexEventView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
