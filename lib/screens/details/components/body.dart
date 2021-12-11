import 'package:flutter/material.dart';
import 'package:reshop_app/constants.dart';
import 'package:reshop_app/models/product.dart';
import 'package:reshop_app/screens/details/components/add_to_cart.dart';
import 'package:reshop_app/screens/details/components/color_and_size.dart';
import 'package:reshop_app/screens/details/components/counter_with_fa_btn.dart';
import 'package:reshop_app/screens/details/components/description.dart';
import 'package:reshop_app/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
    final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
        return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                       Description(product: product),
                       SizedBox(height: kDefaultPaddin / 2),
                       CounterWithFavBtn(),
                       SizedBox(height: kDefaultPaddin / 2),
                       AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}