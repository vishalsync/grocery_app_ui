import 'package:flutter/material.dart';

//widgets
import './card_list_tile_widget.dart';

class CartItemWidget extends StatelessWidget {

    final String imageUrl;
    final String title;
    final String subtitle;
    final String quantity;
    final Function quantityHandler;

    CartItemWidget({
      @required this.imageUrl,
      @required this.title,
      @required this.subtitle,
      @required this.quantity,
      @required this.quantityHandler,
    });


  @override
  Widget build(BuildContext context) {
    return CardListTileWidget(
      leading: Container(
        width: 50.0,
        height: 50.0,
        child: Image.network(imageUrl, fit: BoxFit.cover,),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Column(
        children: [
          InkWell(
            onTap: () {},
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.green,
              child: Icon(
                Icons.add, color: Colors.white,
                size: 15.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(quantity),
          ),
          InkWell(
            onTap: quantityHandler,
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.green,
              child: Icon(
                Icons.remove, color: Colors.white,
                size: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}//End of CartItemWidget class