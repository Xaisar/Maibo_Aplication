import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';
import 'package:get/get.dart';

class CommentPostView extends GetView {
  const CommentPostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(color: grey1, width: 1),
              top: BorderSide(color: grey1, width: 1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage("assets/images/image3.jpg"),
                  ),
                  const SizedBox(width: 10),
                  Text("Xavier Is'ad Ariel",
                      style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ],
              ),
              Text("12 Juni 2023",
                  style: GoogleFonts.dmSans(
                      color: grey3, fontSize: 14, fontWeight: FontWeight.w500)),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 40),
              Text("Halo Mas bro apa kabar?",
                  style: GoogleFonts.dmSans(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.normal)),
            ],
          ),
        ],
      ),
    );
  }
}
