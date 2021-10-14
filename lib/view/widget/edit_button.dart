import 'package:flutter/material.dart';
import 'package:get/get.dart';

SizedBox editButton(BuildContext context, String editIcon) {
  return SizedBox(
      height: MediaQuery.of(context).size.height * 67 / Get.height,
      child: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 52 / Get.height,
            width: MediaQuery.of(context).size.width * 52 / Get.width,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: const Color(0xffE7E7E7)),
              borderRadius: BorderRadius.circular(18),
              color: const Color(0xffF2F2F2),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 6),
                    blurRadius: 3,
                    spreadRadius: -1,
                    color: Color(0xffE0E0E0)),
                BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 13,
                    spreadRadius: -5,
                    color: Color(0xffC9C9C9)),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.asset("assets/icons/$editIcon.png",
                  color: const Color(0xffEABA24)),
            ),
          ),
        ],
      ));
}
