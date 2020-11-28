import 'package:flutter/material.dart';

//widgets
import '../widgets/cart_item_widget.dart';

class WishlistScreen extends StatelessWidget {
  static const String routeName = "wishlist_screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.grey.shade200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Your Wishlist", 
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Expanded(
              child: ListView(
                children: [
                  CartItemWidget(
                    imageUrl: "https://image.freepik.com/free-photo/juicy-pineapple-white-background-isolated_96064-298.jpg",
                    title: "Pineapple",
                    subtitle: "4 in a pack",
                    quantity: "2",
                    quantityHandler: () {},
                  ),
                  CartItemWidget(
                    imageUrl: "https://image.freepik.com/free-photo/organic-background-green-vegetarian-nutrition_1203-5845.jpg",
                    title: "Cabbage",
                    subtitle: "1 kg",
                    quantity: "5",
                    quantityHandler: () {},
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                color: Colors.green,
                onPressed: (){}, 
                child: Text("Add to Whishlist", style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}//End of WishlistScreen class