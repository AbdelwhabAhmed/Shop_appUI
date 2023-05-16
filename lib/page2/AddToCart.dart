import 'package:flutter/material.dart';

import '../productsCart.dart';
class AddToCart extends StatelessWidget {
  final Product? product;
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product!.color,
              ),
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
                color: product!.color, onPressed: () {  },
              ),
          
            ),

          Expanded(
            child:Container(
          padding: EdgeInsets.only(top:10,left:35,right: 20,bottom: 10,),
    height: 50,
    decoration: BoxDecoration(
    color: product!.color,
    borderRadius: BorderRadius.circular(24)


    ),
    child: Center(
      child:MaterialButton(
        onPressed: () {  },
        child: Text('Buy Now'
          ,style: TextStyle(
            color:Colors.white ,
            fontWeight: FontWeight.bold,
            fontSize: 24,),

        ),
      ),
    ),



            )
          ),
          

        ],
      ),
    );
  }
}