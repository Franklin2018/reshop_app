import 'package:flutter/material.dart';
import 'package:reshop_app/screens/details/components/card_counter.dart';



class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CardCounter(),
        Container(
          padding: EdgeInsets.all(1),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child:  IconButton(
          icon: Icon(Icons.favorite_border, color: Colors.white,),
          onPressed: () {},
        ),
        )
      ],
    );
  }
}