import 'package:flutter/material.dart';

import 'Cart_Counter.dart';

class CounterWithFavButton extends StatelessWidget {
  const CounterWithFavButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
     CartCounter(),
     IconButton(
      color: Colors.red,
      icon: Icon(
        Icons.favorite_sharp), onPressed: () {  },)
    
     
     
     
     
     ]);
  }
}
// ignore: camel_case_types
