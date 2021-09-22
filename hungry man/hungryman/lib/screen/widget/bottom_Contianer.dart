import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  final String image;
  final String name;
  final int price;
  BottomContainer(
      {@required this.image, @required this.price, @required this.name});
  @override
  Widget build(BuildContext context) {
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
                            image,
                          )),
                    ),
                  )),
              SizedBox(
                width: 40,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      width: 140,
                      child: Text(
                        "$name",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 140,
                      child: Text(
                        " PKR  $price",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   width: 60,
              // ),
              Expanded(
                child: Align(
                    //  alignment: Alignment.topRight,
                    child: IconButton(
                  icon: Icon(
                    Icons.shopping_cart_rounded,
                    size: 30,
                  ),
                  alignment: Alignment(20, 0),
                  onPressed: () {
                    print("add to cart");
                  },
                )),
              ),
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
