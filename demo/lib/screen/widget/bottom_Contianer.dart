import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/fetchproduct.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:demo/cart.dart';

class BottomContainer extends StatefulWidget {
  final String image;
  final String name;
  final int price;

  BottomContainer({
    required this.image,
    required this.price,
    required this.name,
  });

  @override
  _BottomContainerState createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  bool isTrue = false;
  bool isItemFound = false;
  @override
  Widget build(BuildContext context) {
    Future addToCart() async {
      final FirebaseAuth _auth = FirebaseAuth.instance;
      var currentUser = _auth.currentUser;
      CollectionReference _collectionRef =
          FirebaseFirestore.instance.collection("users-cart-items");
      return _collectionRef
          .doc(currentUser.email)
          .collection("items")
          .doc()
          .set({
        "name": widget.name,
        "price": widget.price,
        "images": widget.image,
      }).then((value) => Fluttertoast.showToast(msg: "item added"));
    }

   

    return GestureDetector(
        child: Column(
      children: [
        Container(
          color: Colors.grey[100],
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                  height: 70,
                  width: 70,
                  child: Container(
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            widget.image,
                          )),
                    ),
                  )),
              SizedBox(
                width: 40,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "${widget.name}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " PKR  ${widget.price}",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(
                      Icons.shopping_cart_rounded,
                      size: 30,
                    ),
                    alignment: Alignment(20, 0),
                    onPressed: () {
                      addToCart();

                      print("add to cart");
                    },
                  )),
            ],
          ),
        ),
        Divider(
          height: 10,
          thickness: 2,
        )
      ],
    ));
  }
}
