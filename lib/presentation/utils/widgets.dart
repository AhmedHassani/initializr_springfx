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
        color: isPrimary ? t4_textColorPrimary : textColor,
        fontWeight: isBold ? FontWeight.w900 : FontWeight.normal,
        fontStyle: FontStyle.normal,
        height: 1.5,
        letterSpacing: latterSpacing,
      ));
}

class EditText extends StatefulWidget {
  var isPassword;
  var isSecure;
  var fontSize;
  var textColor;
  var fontFamily;
  var text;
  var hint;
  var maxLine;
  TextEditingController mController;

  VoidCallback onPressed;

  EditText(
      {var this.textColor = const Color(0XFF888888),
      var this.isPassword = true,
      var this.hint = "",
      var this.isSecure = false,
      var this.text = "",
      var this.mController,
      var this.maxLine = 1});

  @override
  State<StatefulWidget> createState() {
    return EditTextState();
  }
}

class EditTextState extends State<EditText> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.mController,
      obscureText: widget.isPassword,
      style: TextStyle(
        fontSize: 16.0,
      ),
      decoration: InputDecoration(
        suffixIcon: widget.isSecure
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    widget.isPassword = !widget.isPassword;
                  });
                },
                child: new Icon(widget.isPassword
                    ? Icons.visibility
                    : Icons.visibility_off),
              )
            : null,
        contentPadding: EdgeInsets.fromLTRB(16, 10, 16, 10),
        hintText: widget.hint,
        hintStyle: TextStyle(color: Color(0XFFBABFB6)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0XFFB4BBC2), width: 0.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0XFFB4BBC2), width: 0.0),
        ),
      ),
    );
  }
}
