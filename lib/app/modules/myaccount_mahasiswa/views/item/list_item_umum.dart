import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

class ListItemUmum extends GetView {
  final icon;
  final name;
  const ListItemUmum({super.key, this.icon, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: grey1, width: 1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
                image: AssetImage(icon),
                width: 20,
                height: 20,
              ),
          const SizedBox(
            width: 8,
          ),
          Text(
            name,
            style: GoogleFonts.dmSans(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
