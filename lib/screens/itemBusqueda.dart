import 'package:flutter/material.dart';
import 'package:reshop_app/models/product.dart';
import 'package:reshop_app/screens/details/details_screen.dart';
import 'package:reshop_app/screens/home/components/item_card.dart';

import '../../../constants.dart';
import './home/components/categories.dart';

class ItemBusqueda extends StatelessWidget {
  const ItemBusqueda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Productos",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: productsBusqueda.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: productsBusqueda[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: productsBusqueda[index],
                            ),
                          )),
                    )
                    ),
          ),
        ),
      ],
    );
  }
}