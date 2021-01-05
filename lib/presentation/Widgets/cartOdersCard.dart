import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';
import 'package:giesse_app/presentation/utils/colors.dart';

class CartOrdersCard extends StatelessWidget {
  const CartOrdersCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15,
        left: 20,
        right: 20,
      ),
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  Assets.icons.sharedIcons.checked.path,
                  color: mainBlueColor,
                  width: 24,
                  height: 24,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 200,
                          child: text(
                            'Customer name can be very long',
                            maxLine: 2,
                            isLongText: true,
                            isPrimary: false,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                    text(
                      '#123456',
                      isPrimary: false,
                      textColor: textColorSecondary,
                      fontSize: 16.0,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: textColorSecondary,
                    ),
                    onPressed: () => print('Pressed'),
                  ),
                  text(
                    '€20.00',
                    isPrimary: false,
                    textColor: mainBlueColor,
                    fontSize: 16.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
