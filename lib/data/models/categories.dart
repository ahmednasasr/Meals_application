import 'package:flutter/material.dart';
enum Type {Simple,Hard}
enum MoneyType { Luxurious, Affordable }
enum CategorieName { Italian, QuickEasy , Hamburgers , German , LightLovely , Exotic , Breakfast , Asian , French , Summer}

class Categorie {
  final String  name;
  final Color colorOfCategorie;
  Categorie(this.name, this.colorOfCategorie);
}

class Menu {
  final String name;
  final String categorieName;
  final String img;
  final num time;
  late Type type;
  late MoneyType moneyType;
  final List ingredients;
  final List steps; 
  late bool favorite;
  late IconData favoriteIcon;
  Menu(this.name, this.img, this.time, this.type, this.moneyType, this.categorieName, this.ingredients, this.steps, this.favorite, this.favoriteIcon);
}



