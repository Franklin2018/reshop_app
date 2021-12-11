import 'package:flutter/material.dart';
import 'package:reshop_app/constants.dart';

import 'components/body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: buidAppBar(context),
      body: Body(),
    );
  }

  AppBar buidAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: kTextColor),
          onPressed: (){
              Navigator.pop(context);
          },
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search,  color: kTextColor,),
          onPressed: () {
          
          },
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