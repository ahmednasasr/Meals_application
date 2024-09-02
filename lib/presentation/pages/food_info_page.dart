import 'package:flutter/material.dart';
import '../../data/models/categories.dart';

class FoodInfoPage extends StatefulWidget {
  final Menu menu;
  FoodInfoPage({super.key, required this.menu});
  @override
  State<FoodInfoPage> createState() => _FoodInfoPageState();
}

class _FoodInfoPageState extends State<FoodInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 56, 39, 33),
          title: Text("${widget.menu.name}",
              style: TextStyle(color: Colors.white)),
          actions: [
            GestureDetector(
              onTap: () => setState(() {
                if(widget.menu.favorite == false){
                  widget.menu.favoriteIcon = Icons.favorite;
                  widget.menu.favorite = true;
                  }  
                else{
                  widget.menu.favoriteIcon = Icons.favorite_outline;
                  widget.menu.favorite = false;
                  }
              }),
              child: Icon(
                widget.menu.favoriteIcon,
                color: Colors.white,
                ),
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 56, 39, 33),
        body: Column(
            children: [
              Image.network(widget.menu.img),
              SizedBox(height: 15,),
              Text(
                "Ingredients",
                style:
                    TextStyle(color: Colors.orange, fontWeight: FontWeight.bold,fontSize: 24),
              ),
             Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, childAspectRatio: 14),
                  children: List.generate(widget.menu.ingredients.length, (index) {
                    return Column(children: [Text(widget.menu.ingredients[index],style: TextStyle(color: Colors.white),)]);
                  }),
                  ),
              ),
              Text(
                "Steps",
                style:
                    TextStyle(color: Colors.orange, fontWeight: FontWeight.bold,fontSize: 24),
              ),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, childAspectRatio: 14),
                  children: List.generate(widget.menu.steps.length, (index) {
                    return Column(children: [Text(widget.menu.steps[index],style: TextStyle(color: Colors.white),)]);
                  }),
                  ),
              ),  
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        );
  }
}
