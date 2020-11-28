import 'package:flutter/material.dart';

class DailyNeedCardWidget extends StatelessWidget {

  final String imageUrl;
  final String title;
  final String subtitle;
  final Function addToFav;
  final Function addToCart;
  final Function goToDetial;

  DailyNeedCardWidget({
    @required this.imageUrl,
    @required this.title,
    @required this.subtitle,
    this.addToFav,
    this.addToCart,
    this.goToDetial,
  });





  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: goToDetial,
                child: Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: Image.network(imageUrl, fit: BoxFit.cover,),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            subtitle,
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border), 
                  onPressed: addToFav,
                ),
                IconButton(
                  icon: Icon(Icons.add, color: Colors.green,), 
                  onPressed: addToCart
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}//End of DailyNeedCardWidget class