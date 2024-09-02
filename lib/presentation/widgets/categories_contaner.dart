import 'package:flutter/material.dart';

import '../../data/models/categories.dart';
import '../pages/categories_foods_page.dart';


class CategorieContater extends StatelessWidget {
  final Categorie categorie;

  const CategorieContater({super.key, required this.categorie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CategoriesFood(
                    categorie: categorie,
                  ))),
      child: Container(
        padding: EdgeInsets.all(8),
        child: ClipRRect(
          child: Container(
              padding: EdgeInsets.all(16),
              child: Text(
                categorie.name,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: categorie.colorOfCategorie),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}