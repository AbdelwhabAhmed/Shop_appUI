import 'package:flutter/material.dart';
import 'package:shop_app/productsCart.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: 
           [
           Text(
           'Aristocrtic Hand Bag',
           style: TextStyle(
             color: Colors.white
           ),
           ),
           Text(product!.title,
             style: Theme.of(context).textTheme.headline4!.copyWith(
               color: Colors.white,
               fontWeight: FontWeight.bold
             )
           )
           ,Row(
           
             children: [
              RichText(text: TextSpan(
               children: [
               TextSpan(text:"Price\n",style: TextStyle(color: Colors.white)),
               TextSpan(text:'\$${product!.price}',
               style: Theme.of(context).textTheme.headline4!.copyWith(
                 color: Colors.white,
                 fontWeight: FontWeight.bold
               )
               )
              
               ]
              )
              ),
              SizedBox(width: 10,),
              Expanded(child: Image.asset(product!.image,height: 200,fit: BoxFit.fitHeight,))
           ],)
         ],
      ),
    );
  }
}

