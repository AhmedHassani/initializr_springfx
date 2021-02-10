// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';
import 'package:giesse_app/presentation/utils/colors.dart';

class AgentsCard extends StatelessWidget {
  const AgentsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Function onPressed =
        () => Navigator.of(context).pushReplacementNamed('/AgentDetailsScreen');

    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15,
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          ListTile(
            onTap: onPressed,
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
                          'Agents Name',
                          textColor: textColorPrimary,
                          fontSize: 18.0,
                          isBold: true,
                        ),
                        text(
                          'Agents code : 10',
                          textColor: textColorSecondary,
                          fontSize: 14.0,
                          isPrimary: false,
                        ),
                      ],
                    ),
                  ),
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
