import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:giesse_app/presentation/Widgets/card.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Row(
          children: [
            Text('Order'),
            Icon(
              Icons.shopping_cart,
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
      ),
      // This is handled by the search bar itself.
      resizeToAvoidBottomInset: false,
      body: FloatingSearchBar.builder(
        itemCount: 50,
        padding: EdgeInsets.all(5),
        itemBuilder: (context, index) {
          return BottomCards('test', 'content');
        },
        pinned: true,
        trailing: CircleAvatar(
          child: Text("RD"),
        ),
        drawer: Drawer(
          elevation: 155,
          child: Container(),
        ),
        onChanged: (String value) {},
        onTap: () {},
        decoration: InputDecoration.collapsed(
          hintText: "Search...",
        ),
      ),
    );
  }
}
