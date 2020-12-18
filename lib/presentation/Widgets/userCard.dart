import 'package:flutter/material.dart';
import 'package:giesse_app/presentation/utils/colors.dart';
import 'package:giesse_app/presentation/utils/widgets.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(214, 214, 214, 0.25),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  ClipRRect(
                    child: Image.asset(
                      'assets/images/avatar.png',
                      width: MediaQuery.of(context).size.width / 4.5,
                      height: MediaQuery.of(context).size.width / 4.7,
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  text(
                                    'John Doe',
                                    textColor: t4_textColorPrimary,
                                    fontSize: 18.0,
                                    isBold: true,
                                  ),
                                  Checkbox(
                                    value: false,
                                    // onChanged: _handleRadioValueChange1,
                                  ),
                                ],
                              ),
                              text('this is the info ',
                                  fontSize: 15.0,
                                  textColor: t4_textColorPrimary),
                              SizedBox(
                                height: 4,
                              ),
                              text('Address', fontSize: 15.0, maxLine: 3),
                              SizedBox(
                                height: 4,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
