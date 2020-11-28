import 'package:flutter/material.dart';

//widgets
import '../widgets/cart_item_widget.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = "cart_screen";

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
                  "Your Cart", 
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

            Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 50.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80.0),
                  topRight: Radius.circular(80.0),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal'),
                        Text("Rs. 1500"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delevery fee'),
                        Text("Rs. 100"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total"),
                        Text("Rs. 1600"),
                      ],
                    ),
                  ),
                  FlatButton(
                    color: Colors.green,
                    onPressed: (){}, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Continue to Checkout", style: TextStyle(color: Colors.white),),
                        Text("Rs. 1600", style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}//End of CartScreen class