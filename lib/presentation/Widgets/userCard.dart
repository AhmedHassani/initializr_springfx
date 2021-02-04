// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';
import 'package:giesse_app/presentation/utils/colors.dart';

class UserCard extends StatelessWidget {
  const UserCard({
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
        children: [
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SvgPicture.asset(
                Assets.icons.userAvater.path,
                // width: MediaQuery.of(context).size.width / 4.5,
                // height: MediaQuery.of(context).size.width / 4.7,
                fit: BoxFit.fill,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text(
                          'User Name',
                          textColor: textColorPrimary,
                          fontSize: 18.0,
                          isBold: true,
                        ),
                        text(
                          'neighborhood, City, State, Country. Street, House ',
                          fontSize: 12.0,
                          textColor: textColorPrimary,
                          isPrimary: false,
                          maxLine: 2,
                          isLongText: true,
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    Assets.icons.sharedIcons.selectedCustomer.path,
                    width: 40,
                    height: 40,
                    //TODO to make logic for changing color
                    // color: ,
                  )
                ],
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
