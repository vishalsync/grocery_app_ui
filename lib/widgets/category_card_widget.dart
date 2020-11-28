import 'package:flutter/material.dart';

class CategoryCardWidget extends StatelessWidget {

  final String imageUrl;
  final String categoryName;

  CategoryCardWidget({
    @required this.imageUrl,
    this.categoryName,
  });




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40.0,
          height: 40.0,
          child: Image.network(this.imageUrl, fit: BoxFit.cover,),
        ),
        
        if(categoryName != null)
        Text(categoryName)
      ],
    );
  }
}//End of CategoryCardWidget class