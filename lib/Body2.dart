
import 'package:flutter/material.dart';
import 'package:shop_app/page2/AddToCart.dart';
import 'package:shop_app/productsCart.dart';

import 'page2/CounterWithFavButton.dart';
import 'page2/Product_Title_with_Image.dart';
import 'page2/color_and_size.dart';
import 'page2/description.dart';


class Body2 extends StatelessWidget {
  final Product? product;
  const Body2({ Key? key, this.product }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
             SizedBox(
              height: size.height,
               child:
               Stack(
                 children: [
                   Container(
                 margin:EdgeInsets.only(top:size.height*.3),
                 padding: EdgeInsets.only(top: size.height *.12,left: 20,right:20 ),
                 //height: 500,
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(25),
                    topRight: Radius.circular(25)
                    
                  )
                 ),
                child:Column(children: [
                  SizedBox(height:30),
                  ColorAndSize(product: product),
                   Discription(product: product),
                   CounterWithFavButton(),
                  AddToCart( product: product,)
                ],)        
               ),
               ProductTitleWithImage(product: product),
               
             
               ],),
             )


      ],),
    );
  }
}

