import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giesse_app/presentation/Widgets/textField.dart';
import 'package:giesse_app/presentation/utils/colors.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';

// This dialog to record the cash out from taking screen.
class CashOutDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}

dialogContent(BuildContext context) {
  return Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: const Offset(0.0, 10.0),
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, // To make the card compact
        children: <Widget>[
          Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        padding: EdgeInsets.all(15),
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.close,
                          color: Colors.black,
                        )),
                  ),
                  Center(
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: text(
                          'Invoice Cash Out',
                          isPrimary: false,
                          fontSize: 18.0,
                          textColor: textColorSecondary,
                        )),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 25, right: 15.5, left: 15.5),
                    child: EditText(
                      hint: 'Date',
                      isPassword: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 25, right: 15.5, left: 15.5),
                    child: EditText(
                      hint: 'Type',
                      isPassword: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 25, right: 15.5, left: 15.5),
                    child: EditText(
                      isPassword: false,
                      hint: 'Import',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: mainGreenColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: FlatButton(
                        onPressed: () =>
                            //TODO
                            Navigator.of(context).pushReplacementNamed('/'),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: text(
                            'Confirm',
                            isBold: true,
                            fontSize: 18.0,
                            isPrimary: false,
                            textColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ));
}
