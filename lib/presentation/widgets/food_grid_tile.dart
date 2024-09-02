import 'package:flutter/material.dart';
import '../../data/models/categories.dart';
import '../pages/food_info_page.dart';

class FoodGridTile extends StatelessWidget {
  final Menu menu;

  const FoodGridTile({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FoodInfoPage(
                    menu: menu,
                  ))),
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        child: ClipRRect(
          child: SizedBox(
            child: GridTile(
              child: Image.network(
                menu.img,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              footer: Container(
                color: Colors.black.withOpacity(.5),
                child: Column(children: [
                  Text(
                    menu.name,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${menu.time} min",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.shop,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${menu.type.name}",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("\$",style: TextStyle(color: Colors.white),),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${menu.moneyType.name}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  )
                ]),
              ),
            ),
            width: 200,
            height: 100,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
