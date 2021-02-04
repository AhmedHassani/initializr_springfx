// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';
import 'package:giesse_app/presentation/utils/colors.dart';

class OrderHistoryCard extends StatelessWidget {
  const OrderHistoryCard({
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
          boxShadow: const [
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
                  color: mainGreenColor,
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
                      '25/12/2020',
                      isPrimary: false,
                      textColor: textColorSecondary,
                      fontSize: 16.0,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        text(
                          'Cod: 1234',
                          fontSize: 16.0,
                        ),
                        const SizedBox(
                          width: 38,
                        ),
                        text(
                          'kg: 15,00',
                          fontSize: 16.0,
                        ),
                        const SizedBox(
                          width: 37,
                        ),
                        text(
                          'kg: 10,00',
                          fontSize: 16.0,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: SvgPicture.asset(
                                Assets.icons.sharedIcons.minus.path,
                                color: textColorSecondary,
                                width: 24,
                                height: 24,
                              ),
                            ),
                            SvgPicture.asset(
                              Assets.icons.sharedIcons.plus.path,
                              color: textColorSecondary,
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                        SvgPicture.asset(
                          Assets.icons.sharedIcons.editOrder.path,
                          color: mainGreenColor,
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
