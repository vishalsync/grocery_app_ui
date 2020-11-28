import 'package:flutter/material.dart';


class UserDetialsScreen extends StatelessWidget {
  static const String routeName = "user_detials_screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "You", 
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("My Orders"),
          ),
          ListTile(
            leading: Icon(Icons.favorite_border),
            title: Text("My Favourite"),
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text("Payment Detials"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("My Account"),
          ),
        ],
      ),
    );
  }
}