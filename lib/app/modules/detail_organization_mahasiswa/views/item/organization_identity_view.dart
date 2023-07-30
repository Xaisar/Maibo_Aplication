import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

class OrganizationIdentityView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(""),
              ),
              SizedBox(width: 15),
              Flexible(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //nama organisasi
                  Text(
                    "Forum Perkumpulan Robotika Nasional",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Robotika Poliwangi",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.dmSans(
                        color: grey3,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  //sub nama
                ],
              ))
            ],
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Perkumpulan anak robotika poliwangi yang cerah \nighjshjBBbjBJHSAB \nahbhdasjbdbdjabdbjdba",
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.dmSans(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
