import 'package:flutter/material.dart';


//screens
import './home_screen.dart';
import './cart_screen.dart';
import './wishlist_screen.dart';
import './user_detials_screen.dart';


class BottomNavigationScrren extends StatefulWidget {
  @override
  _BottomNavigationScrrenState createState() => _BottomNavigationScrrenState();
}

class _BottomNavigationScrrenState extends State<BottomNavigationScrren> {

  int _currentIndex = 0;
  void changeScreenHandler(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
    });
  }

  final List<Widget> _screens = [
    HomeScreen(),
    CartScreen(),
    WishlistScreen(),
    UserDetialsScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: changeScreenHandler,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Wishlist"
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "You"
            ),
          ],
        ),

        body: _screens[_currentIndex],


      ),
    );
  }
}