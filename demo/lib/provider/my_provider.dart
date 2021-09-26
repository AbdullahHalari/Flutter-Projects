import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/models/food_categories_modle.dart';
import 'package:flutter/cupertino.dart';


class MyProvider extends ChangeNotifier {
 
  List<FoodCategoriesModle> pizzaCategoriesList = [];
  late FoodCategoriesModle pizzaCategoriesModle;
  Future<void> getPizzaCategoriesList() async {
    List<FoodCategoriesModle> newPizzaCategoriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categories')
        .doc('IJEeRqhciKTSLbiQKYT9')
        .collection('pizza')
        .get();
    querySnapshot.docs.forEach((element) {
      pizzaCategoriesModle = FoodCategoriesModle(
        image: element.data()['image'],
        name: element.data()['name'],
        price: element.data()['price'],
      );
      newPizzaCategoriesList.add(pizzaCategoriesModle);
      pizzaCategoriesList = newPizzaCategoriesList;
    });
  }

  get throwPizzaCategoriesList {
    return pizzaCategoriesList;
  }

  
}
