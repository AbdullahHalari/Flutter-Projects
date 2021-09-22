import 'package:demo/modles/food_categories_modle.dart';
import 'package:demo/screen/widget/bottom_Contianer.dart';
import 'package:flutter/material.dart';
import 'package:demo/home_page.dart';

class Categories extends StatelessWidget {

  List<FoodCategoriesModle> list = []; 
  Categories({@required this.list});
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        // elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.card_travel),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (contet) => Bottombar()));
          },
        ),
      ),
      body: GridView.count(
          primary: true,
          crossAxisCount: 1,
          childAspectRatio: 4.0,
          
          children: list
              .map(
                (e) => BottomContainer(               
                  image: e.image,
                  price: e.price,
                  name: e.name,
                ),
              )
              .toList()),
     
    );
  }
}
