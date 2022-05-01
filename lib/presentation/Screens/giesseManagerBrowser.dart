import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';

class BrowserWidget extends StatefulWidget {
  @override
  _BrowserWidgetState createState() => new _BrowserWidgetState();
}

class _BrowserWidgetState extends State<BrowserWidget> {
  InAppWebViewGroupOptions optionsweb = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: false,
      ),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ));

  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance!
  //       .addPostFrameCallback((_) => widget.browser.openUrlRequest(
  //             urlRequest: URLRequest(url: Uri.parse("https://itam.ltd")),
  //             options: options,
  //           ));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: NavigationDrawer(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse("https://itam.ltd")),
          initialOptions: optionsweb,
        ),
      ),
    );
  }
}
