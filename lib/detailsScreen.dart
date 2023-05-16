import 'package:flutter/material.dart';
import 'package:shop_app/Body2.dart';
import 'package:shop_app/productsCart.dart';


class DetailsScreen extends StatelessWidget {
 final Product? product;
  const DetailsScreen({
     Key? key, 
     this.product 
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product?.color,
      appBar: AppBar(
     backgroundColor: product?.color,
       elevation: 0,
       leading: 
       IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
         icon: Icon(Icons.arrow_back),
         color: Colors.white,
         ),
       actions: [
       IconButton(
       onPressed: (){}, 
       icon: Icon(
        Icons.search,
        color:Colors.white,
        )
        )
       ,
       IconButton(
        onPressed: (){},
        icon: Icon(
          Icons.shopping_cart_outlined),
          color: Colors.white,

        ),]
      ),
      body: Body2(product: product,)
    
    
    
    );
  }
}