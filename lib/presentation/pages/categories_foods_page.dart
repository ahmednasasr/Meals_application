import 'package:flutter/material.dart';
import 'package:resturantapp/data/models/categories.dart';

import '../../data/datasource/data_source.dart';
import '../widgets/food_grid_tile.dart';


class CategoriesFood extends StatelessWidget {
  final Categorie categorie;

  const CategoriesFood({super.key, required this.categorie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 36, 21, 15),
          title:
              Text("${categorie.name}", style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        backgroundColor: const Color.fromARGB(255, 56, 39, 33),
        body: ListView.builder(
          itemBuilder: (context, i) => FoodGridTile(
            menu: menu
                .where((m) => m.categorieName == categorie.name)
                .toList()[i],
          ),
          itemCount: menu
              .where((m) => m.categorieName == categorie.name)
              .toList()
              .length,
        ));
  }
}
