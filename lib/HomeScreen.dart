import 'package:flutter/material.dart';
import 'package:shop_app/Body.dart';
import 'package:shop_app/Constants.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        color: kTextColor,
        onPressed: () {
          
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search,
          color:kTextColor,),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined,
          color:kTextColor,),
          onPressed: () {},
        ),
         
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
