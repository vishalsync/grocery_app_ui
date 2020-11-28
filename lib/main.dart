import 'package:flutter/material.dart';

//screens
import './screens/bottom_navigation_screen.dart';
import './screens/product_detials_screen.dart';

void main() => runApp( MyApp() );


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationScrren(),
      routes: {
        ProductDetialsScreen.routeName: (context) => ProductDetialsScreen(),
      },
    );
  }
}