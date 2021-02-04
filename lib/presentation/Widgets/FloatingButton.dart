// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';
import 'package:giesse_app/presentation/utils/colors.dart';

Widget buildFloatingButton(
  BuildContext contextm,
  String iconPath,
  String buttonName,
  Function onPressed,
) {
  return RawMaterialButton(
    onPressed: onPressed,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    child: Container(
      width: 145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: iconColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: 12, top: 15, bottom: 15, left: 18),
            child: text(
              buttonName,
              textColor: Colors.white,
              isPrimary: false,
              fontSize: 18.0,
            ),
          ),
          Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(54, 205, 186, 1),
              ),
              child: SvgPicture.asset(
                iconPath,
                color: Colors.white,
                width: 18,
                height: 18,
              )),
        ],
      ),
    ),
  );
}
