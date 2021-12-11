import 'package:flutter/material.dart';
import 'package:reshop_app/models/product.dart';
import 'package:reshop_app/screens/details/components/body.dart';


import '../../constants.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

    AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: kTextColor),
          onPressed: (){},
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search,  color: kTextColor,),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined,  color: kTextColor,),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2,)
      ], 
    );
  }
}