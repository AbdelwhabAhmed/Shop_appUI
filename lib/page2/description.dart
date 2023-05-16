import 'package:flutter/material.dart';

import '../productsCart.dart';

class Discription extends StatelessWidget {
  const Discription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(product!.description,
      style: TextStyle(height: 1.5),
                  ),
    );
  }
}

