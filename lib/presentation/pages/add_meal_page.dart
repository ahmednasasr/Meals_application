

import 'package:flutter/material.dart';

import '../../data/datasource/data_source.dart';
import '../../data/models/categories.dart';
import 'bottom_nav_page.dart';

class AddMeal extends StatefulWidget {
  const AddMeal({
    super.key,
  });

  @override
  State<AddMeal> createState() => _AddMealState();
}

class _AddMealState extends State<AddMeal> {
  Color x = Colors.brown,
      y = Colors.brown,
      xx = Colors.brown,
      yy = Colors.brown;
  late Type t;
  late MoneyType moneytype;
  String mName = "", imge = "";
  int timee = 0;
  String categorie = 'Italian';
  GlobalKey<FormState> key = GlobalKey();
  TextEditingController mealName = TextEditingController();
  TextEditingController urlImg = TextEditingController();
  TextEditingController time = TextEditingController();
  TextEditingController Ingredients = TextEditingController();
  TextEditingController steps =TextEditingController();
  String nsteps="";
  String nIngredients="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Add Meal page"),
      ),
      backgroundColor: const Color.fromARGB(255, 56, 39, 33),
      body: Form(
          key: key,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: "Meal Name"),
                validator: (String? text) {
                  if (text == null || text.isEmpty) {
                    return "Field is required";
                  } else {
                    mName = text;
                    return null;
                  }
                },
                controller: mealName,
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                  decoration: InputDecoration(hintText: "URL Image"),
                  controller: urlImg,
                  validator: (String? text) {
                    if (text == null || text.length < 20) {
                      return "You have Erorr";
                    } else {
                      imge = text;
                      return null;
                    }
                  }),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Time"),
                controller: time,
                validator: (String? text) {
                  if (text == null) {
                    return "Field is required";
                  } else {
                    timee = int.parse(text);
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 120,
                child: Column(children: [
                  Text(
                    "Meal Type",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() {
                            x = Color.fromARGB(255, 109, 32, 4);
                            y = Colors.brown;
                            t = Type.Simple;
                          }),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              color: x,
                              child: const Column(
                                children: [
                                  Text(
                                    "Simple",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() {
                            y = Color.fromARGB(255, 109, 32, 4);
                            x = Colors.brown;
                            t = Type.Hard;
                          }),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              color: y,
                              child: const Column(
                                children: [
                                  Text(
                                    "Hard",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ]),
              ),
              SizedBox(
                height: 120,
                child: Column(children: [
                  Text(
                    "Meal Money Type",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() {
                            yy = Colors.brown;
                            xx = Color.fromARGB(255, 109, 32, 4);
                            moneytype = MoneyType.Affordable;
                          }),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              color: xx,
                              child: const Column(
                                children: [
                                  Text(
                                    "Affordable",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() {
                            yy = Color.fromARGB(255, 109, 32, 4);
                            xx = Colors.brown;
                            moneytype = MoneyType.Luxurious;
                          }),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              color: yy,
                              child: const Column(
                                children: [
                                  Text(
                                    "Luxurious",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ]),
              ),
              DropdownButton<String>(
                style: TextStyle(color: Colors.white),
                dropdownColor: Colors.transparent,
                value: categorie,
                items: <String>[
                  "Italian",
                  "Quick & Easy",
                  "Hamburgers",
                  "German",
                  "Light & Lovely",
                  "Exotic",
                  "Breakfast",
                  "Asian",
                  "French",
                  "Summer"
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    categorie = newValue!;
                  });
                },
              ),
              SizedBox(height: 30,),
              TextFormField(
                validator: (String? text) {
                  if (text == null) {
                    return "Field is required";
                  } else {
                    nIngredients = text;
                    return null;
                  }
                },
                controller: Ingredients,
                decoration: InputDecoration(
                    labelText: "Ingredients",
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: 'enter Ingredients',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                ),
              SizedBox(height: 15,),
              TextFormField(
                validator: (String? text) {
                  if (text == null) {
                    return "Field is required";
                  } else {
                    nsteps = text;
                    return null;
                  }
                },
                controller: steps,
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: "steps",
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: 'enter steps',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                ),
              Spacer(),
              ElevatedButton(
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      menu.add(Menu(mName, imge, timee, t, moneytype, categorie,
                          [nsteps], [nIngredients], false, Icons.favorite_outline));

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomNavPage()));
                    }
                  },
                  child: Text("Add")),
            ],
          )
      ),
    );
  }
}
