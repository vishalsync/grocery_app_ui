import 'package:flutter/material.dart';


//widgets
import '../widgets/daily_need_card_widget.dart';

class ProductDetialsScreen extends StatelessWidget {
  static const String routeName = "product_detials_screen";
  
  @override
  Widget build(BuildContext context) {

    final Map<String, String> data = ModalRoute.of(context).settings.arguments;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Detials"),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10.0),
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: Icon(Icons.favorite_border), 
                              onPressed: (){}
                            ),
                          ],
                        ),
                        Image.network(data["imageUrl"], fit: BoxFit.cover,),
                        SizedBox(height: 5.0,),
                        Text(data["title"]),
                        Text(data["subtitle"]),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Related Items", 
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                DailyNeedCardWidget(
                  imageUrl: "https://image.freepik.com/free-photo/green-yellow-red-fresh-bell-pepper-capsicum-isolated-white_103864-153.jpg", 
                  title: "Red/yellow Capsicum", 
                  subtitle: "1 kg"
                ),
                DailyNeedCardWidget(
                  imageUrl: "https://image.freepik.com/free-photo/juicy-pineapple-white-background-isolated_96064-298.jpg", 
                  title: "Pineapple", 
                  subtitle: "1 kg"
                ),
              ],
            ),
          ),
          FlatButton(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            color: Colors.green,
            onPressed: (){}, 
            child: Text(
              "Add to Cart",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}