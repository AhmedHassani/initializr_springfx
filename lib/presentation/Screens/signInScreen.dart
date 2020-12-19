import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:giesse_app/presentation/Widgets/textField.dart';
import 'package:giesse_app/presentation/utils/responsiveUI.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';

class SignInScreen extends StatefulWidget {
  static String tag = '/T5SignIn';

  @override
  SignInScreenState createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: SizeConfig.screenHeight,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Colors.white,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/giesseLogo2.png',
                      width: SizeConfig.screenWidth / 2,
                      height: SizeConfig.screenWidth / 2,
                    ),
                    EditText(
                      hint: "Email Address",
                      isPassword: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    EditText(
                      hint: " Password",
                      isSecure: true,
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(112, 149, 254, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: FlatButton(
                        onPressed: () => print('Pressed'),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: text(
                            'Login',
                            fontSize: 18.0,
                            isPrimary: false,
                            textColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(241, 245, 254, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: FlatButton(
                          onPressed: () => print('Pressed'),
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: text(
                              'Login as a guest',
                              fontSize: 18.0,
                              isPrimary: false,
                              textColor: Color.fromRGBO(112, 149, 254, 1),
                            ),
                          ),
                        ),
                      ),
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
