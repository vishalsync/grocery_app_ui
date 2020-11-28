import 'package:flutter/material.dart';

class CardListTileWidget extends StatelessWidget {

  
  final Widget leading;
  final Widget title;
  final Widget subtitle;
  final Widget trailing;
  final Function onTap;

  CardListTileWidget({
    this.leading,
    this.title = const SizedBox(height:  10.0,),
    this.subtitle = const SizedBox(height:  10.0,),
    this.trailing = const SizedBox(height:  10.0,),
    this.onTap,
  });





  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: onTap,
                child: Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: leading
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          title,
                          subtitle,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            trailing,
          ],
        ),
      ),
    );
  }

}//End of CardListTileWidget class