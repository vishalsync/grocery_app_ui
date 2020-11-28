import 'package:flutter/material.dart';


class NewArrivalCardWidget extends StatelessWidget {

  final String imageUrl;
  final String title;
  final String subtitle;
  final Function goToDetial;
  final Function addToCart;

  NewArrivalCardWidget({
    @required this.imageUrl,
    @required this.title,
    @required this.subtitle,
    this.goToDetial,
    this.addToCart,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150.0,
          height: 300.0,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: goToDetial,
                    child: Image.network(imageUrl, fit: BoxFit.cover,)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, bottom: 5.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, bottom: 5.0),
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ),
                FlatButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  color: Colors.yellow,
                  onPressed: addToCart, 
                  child: Text(
                    "Add to Cart",
                     style: TextStyle(
                      fontWeight: FontWeight.w400
                    ),
                  )
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}