import 'package:flutter/material.dart';


//widgets
import '../widgets/category_card_widget.dart';
import '../widgets/new_arrivals_card_widget.dart';
import '../widgets/daily_need_card_widget.dart';

//screens
import './product_detials_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home_screen";

  void _goToDetialScreen({
    @required BuildContext context,
    @required String imageUrl,
    @required String title,
    @required String subtitle,
  }) {
    Navigator.of(context).pushNamed(
      ProductDetialsScreen.routeName,
        arguments: {
          "imageUrl": imageUrl,
          "title": title,
          "subtitle": subtitle,
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 10.0,),
          Row(
            children: [
              Container(
                width: 40.0,
                child: Image.network(
                  "https://image.freepik.com/free-vector/delivery-guy-motor-scooter-wearing-mask_23-2148498576.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Card(
                  elevation: 3,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    autofocus: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.all(10.0),
                      hintText: "Search products",
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),

            ],
          ),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10.0),
              children: [
                Row(
                  children: [
                    CategoryCardWidget(
                      imageUrl: "https://image.freepik.com/free-photo/basket-full-vegetables_1112-316.jpg",
                      categoryName: "Vegetables",
                    ),
                    SizedBox(width: 10.0),
                    CategoryCardWidget(
                      imageUrl: "https://image.freepik.com/free-vector/realistic-ftuiys-juice-splash-burst-composition-with-spray-images-ripe-tropical-fruits-blank_1284-29364.jpg",
                      categoryName: "Fruite",
                    ),
                    SizedBox(width: 10.0),
                    CategoryCardWidget(
                      imageUrl: "https://image.freepik.com/free-photo/garam-masala-mix-spices-blend-bowl-wooden-background_155165-12900.jpg",
                      categoryName: "Masala",
                    ),
                  ],
                ),

                //New Arrivals
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6.0),
                      color: Colors.red,
                      child: Text(
                        "NEW ARRIVALS",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    FlatButton(
                      onPressed: (){}, 
                      child: Text(
                        "SEE ALL",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    NewArrivalCardWidget(
                      imageUrl: "https://image.freepik.com/free-vector/hand-drawn-mango-background_23-2148143677.jpg",
                      title: "Local Mango",
                      subtitle: "1 kg",
                      goToDetial: () {
                        _goToDetialScreen(
                          context: context, 
                          imageUrl:  "https://image.freepik.com/free-vector/hand-drawn-mango-background_23-2148143677.jpg",
                          title: "Local Mango",
                          subtitle: "1 kg",
                        );
                      },
                      addToCart: () {},
                    ),
                    NewArrivalCardWidget(
                      imageUrl: "https://image.freepik.com/free-photo/broccoli-isolated-white-background-clipping-path_26628-295.jpg",
                      title: "Broccoli",
                      subtitle: "6 in a pack",
                       goToDetial: () {
                        _goToDetialScreen(
                          context: context, 
                          imageUrl:  "https://image.freepik.com/free-photo/broccoli-isolated-white-background-clipping-path_26628-295.jpg",
                          title: "Broccoli",
                          subtitle: "6 in a pack",
                        );
                      },
                      addToCart: () {},
                    ),
                  ],
                ),

                //Daily needs
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6.0),
                      color: Colors.red,
                      child: Text(
                        "DAIY NEEDS",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    FlatButton(
                      onPressed: (){}, 
                      child: Text(
                        "SEE ALL",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),

                DailyNeedCardWidget(
                  imageUrl: "https://image.freepik.com/free-photo/organic-background-green-vegetarian-nutrition_1203-5845.jpg", 
                  title: "Cabbage", 
                  subtitle: "1 kg"
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
        ],
      ),
    );
  }
}