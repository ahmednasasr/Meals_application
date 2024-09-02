import 'package:flutter/material.dart';

import '../../data/datasource/data_source.dart';
import '../widgets/categories_contaner.dart';
import 'add_meal_page.dart';


class Categories extends StatefulWidget {
  const Categories({
    super.key,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.brown,
        title: Text(
          "Categories",
          style: TextStyle(color: Colors.white),
        ),
      ),

      backgroundColor: const Color.fromARGB(255, 56, 39, 33),
      body: const MyWidget(),

      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddMeal())),
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 2),
      itemBuilder: (context, i) => CategorieContater(
        categorie: categories[i],
      ),
      itemCount: categories.length,
    );
  }
}
