import 'package:demo/models/food_categories_modle.dart';
import 'package:demo/provider/my_provider.dart';
import 'package:demo/screen/categories.dart';
import 'package:demo/test.dart';
import 'package:flutter/material.dart';
import 'package:bottom_bars/bottom_bars.dart';
import 'package:provider/provider.dart';
import 'package:demo/cart.dart';


class Bottombar extends StatefulWidget {

  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  List<FoodCategoriesModle> pizzaCategoriesList = [];

  @override
  Widget build(BuildContext context) {
    MyProvider provider = Provider.of<MyProvider>(context);
    provider.getPizzaCategoriesList();
    pizzaCategoriesList = provider.throwPizzaCategoriesList;
    return BottomBars(
      items: [
        BottomBarsItem(
          page: Scaffold(
            body: Categories(list: pizzaCategoriesList),
    ),
          item: Item(
            icon: Icons.group,
            title: Text("Group"),
          ),
        ),
        BottomBarsItem(
          page: Scaffold(
           body: Cart()
            ),
          

          item: Item(
            icon: Icons.ac_unit_outlined,
            title: Text("Audio"),
          ),
        ),
        BottomBarsItem(
          page: Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: () {
              // Test();
            }),
          ),
          item: Item(
            icon: Icons.home,
            title: Text("Home"),
            color: Colors.grey,
          ),
        ),
        BottomBarsItem(
          page: Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: () {
              // Test();
            }),
          ),
          item: Item(
            icon: Icons.settings,
            title: Text("Settings"),
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
