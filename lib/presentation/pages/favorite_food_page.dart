import 'package:flutter/material.dart';

import '../../data/datasource/data_source.dart';
import '../widgets/favorite_food_grid_tile.dart';


class FavoriteFood extends StatelessWidget {
  const FavoriteFood({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 36, 21, 15),
          title: Text(
            "Favorite's food", style: TextStyle(color: Colors.white)
          ),
          centerTitle: true,
        ),
        backgroundColor: const Color.fromARGB(255, 56, 39, 33),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 2),
          itemBuilder: (context, i) => FavoriteGridTile(
            menu: menu.where((m) => m.favorite== true).toList()[i],
          ),
          itemCount: menu.where((m) => m.favorite == true ).toList().length,
        ));
  }
}