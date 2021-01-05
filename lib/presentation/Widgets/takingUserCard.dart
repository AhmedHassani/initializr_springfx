import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';
import 'package:giesse_app/presentation/utils/colors.dart';

class TakingUserCard extends StatelessWidget {
  const TakingUserCard({
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(
                  'Customer Name',
                  isBold: true,
                  isPrimary: true,
                  fontSize: 18.0,
                ),
                GestureDetector(
                  //TODO
                  // onTap: () =>
                  //     Navigator.of(context).pushNamed('/InsertOrderScreen'),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      text(
                        'Cash out',
                        textColor: mainBlueColor,
                        fontSize: 16.0,
                        isPrimary: false,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: mainBlueColor,
                        size: 24,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          buildContainer(true),
          buildContainer(false),
        ],
      ),
    );
  }

  Widget buildContainer(bool isPaid) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  text(
                    '20/12/2020',
                    fontSize: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: isPaid
                          ? secondBlueColor
                          : Color.fromRGBO(255, 215, 215, 1),
                      borderRadius: BorderRadius.circular(14.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: text(
                        isPaid ? 'Paid' : 'Expired',
                        isPrimary: false,
                        isBold: true,
                        textColor: isPaid ? mainBlueColor : expiredRedColor,
                      ),
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
              text(
                'RIBA 120 gg d.f.fm',
                fontSize: 19.0,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  children: [
                    text(
                      'Due: €300 ',
                      fontSize: 19.0,
                    ),
                    text(
                      ' - Received: €160',
                      fontSize: 19.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
