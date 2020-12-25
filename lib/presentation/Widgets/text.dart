import 'package:flutter/material.dart';
import 'package:giesse_app/presentation/utils/colors.dart';

Widget text(
  String text, {
  var fontSize = 15.0,
  var isPrimary = true,
  // var fontFamily = fontRegular,
  var isCentered = false,
  var isBold = false,
  var maxLine = 1,
  var latterSpacing = 0.25,
  var textAllCaps = false,
  var isLongText = false,
  Color textColor,
}) {
  return Text(textAllCaps ? text.toUpperCase() : text,
      textAlign: isCentered ? TextAlign.center : TextAlign.start,
      maxLines: isLongText ? null : maxLine,
      style: TextStyle(
        fontFamily: 'Lato',
        fontSize: fontSize,
        color: isPrimary ? textColorPrimary : textColor,
        fontWeight: isBold ? FontWeight.w900 : FontWeight.normal,
        fontStyle: FontStyle.normal,
        height: 1.5,
        letterSpacing: latterSpacing,
      ));
}
