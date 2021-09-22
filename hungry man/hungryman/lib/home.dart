import 'package:flutter/material.dart';
import 'package:hungryman/carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hungryman/categories/bbq.dart';
import 'package:hungryman/categories/pizza.dart';
import 'package:hungryman/categories/burger.dart';
import 'package:hungryman/categories/coffee.dart';
import 'package:hungryman/categories/dessert.dart';
import 'package:hungryman/categories/icecream.dart';
import 'package:hungryman/categories/juices.dart';
import 'package:hungryman/categories/sandwich.dart';


class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   
  @override
  Widget build(BuildContext context) {
    
     return WillPopScope(
        onWillPop: () async {
          // ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(content: Text('Please First login to enter the app')));
          return false;
        },
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          title: Center(child: Text("😋HUNGRY MAN😛")),
          automaticallyImplyLeading: false,

          backgroundColor: Colors.black,
          // leading: IconButton(
          //   onPressed: () {
          //     Navigator.of(context).pushReplacement(
          //       MaterialPageRoute(
          //         builder: (ctx) => Home(),
          //       ),
          //     );
          //   },
          //   icon: Icon(Icons.close),
          // ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // width: 100,
                height: 40,
                child: TextField(
                    onTap: () {
                      // showSearch(context: context, delegate: DataSearch());
                    },
                    // onSubmitted: (submittedText) {
                    //   // showSearch(context: context, delegate: DataSearch());
                    // },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black38,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(25)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(30)),
                        labelText: 'Search')),
              ),
            ),

            // carousel slider

            Container(
                child: CarouselSlider(
              options: CarouselOptions(
                height: 150.0,

                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                // initialPage: 0,
                enableInfiniteScroll: true,
                // reverse: false,
                autoPlay: true,
                // autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("images/s1.png"),
                            fit: BoxFit.fill))),
                Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("images/s2.png"),
                            fit: BoxFit.fill))),
                Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("images/s3.png"),
                            fit: BoxFit.fill)),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Carousel()));
                      },
                    ))
              ],
            )),

            Container(
              // margin: EdgeInsets.fromLTRB(10, 10, 20, 10),
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    child: categories("Burgers",
                        "https://images.unsplash.com/photo-1606131731446-5568d87113aa?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YnVyZ2Vyc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Burgeritems()));
                    },
                  ),
                  InkWell(
                    child: categories("Sandwich",
                        "https://images.unsplash.com/photo-1539252554453-80ab65ce3586?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2FuZHdpY2h8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  Sandwichitems()));
                    },
                  ),
                  InkWell(
                    child: categories("Pizza",
                        "https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBpenphfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pizzaitems()));
                    },
                  ),
                  InkWell(
                    child: categories("Ice cream",
                        "https://images.unsplash.com/photo-1580915411954-282cb1b0d780?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGljZSUyMGNyZWFtfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  Icecreamitems()));
                    },
                  ),
                  InkWell(
                    child: categories("BBQ",
                        "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmJxfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  Bbqitems()));
                    },
                  ),
                  InkWell(
                    child: categories("Coffee",
                        "https://images.unsplash.com/photo-1512568400610-62da28bc8a13?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGNvZmZlZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  Coffeeitems()));
                    },
                  ),
                  InkWell(
                    child: categories("Dessert",
                        "https://images.unsplash.com/photo-1551024506-0bccd828d307?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZGVzc2VydHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  Dessertitems()));
                    },
                  ),
                  InkWell(
                    child: categories("Juices&Shakes",
                        "https://images.unsplash.com/photo-1542282910-7337bcfea235?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGp1aWNlJTIwYW5kJTIwc2hha2VzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  Juiceitems()));
                    },
                  ),
                ],
              ),
            ),
            // divider
            Divider(
              height: 10,
              thickness: 5.0,
            ),
            foodcard(
                "Zinger Burger",
                "crispy fried chicken fillet slathered with a special burger sauce.",
                "images/zinger.jpg"),
            foodcard(
                "Club Sandwich",
                "a sandwich of three slices of bread with two layers of chicken.",
                "images/club.jpg"),
            foodcard(
                "Pepperoni Pizza",
                "A meaty feast of pepperoni, mozzarella cheese and tomato sauce.",
                "images/pepperoni.jpg")
          ],
        ),
      ),),
    );
  }

  Widget categoriesContainer(
      {@required Function onTap,
      @required String image,
      @required String name}) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: EdgeInsets.only(left: 20),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(image)),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  // Widget pizza() {
  //   return Row(
  //     children: pizzaList
  //         .map(
  //           (e) => categoriesContainer(
  //             image: e.image,
  //             name: e.name,
  //             onTap: () {
  //               Navigator.of(context).pushReplacement(
  //                 MaterialPageRoute(
  //                   builder: (context) => Categories(list: pizzaCategoriesList),
  //                 ),
  //               );
  //             },
  //           ),
  //         )
  //         .toList(),
  //   );
  // }
 
}

Widget foodcard(String foodname, String des, String image) {
  // food card

  return Container(
    height: 310,
    width: 400,
    child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // if you need this
        side: BorderSide(
          color: Colors.orange,
          width: 3,
        ),
      ),
      child: Column(
        children: [
          Container(
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0)),
                image: new DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image,
                    ))),
            height: 200,
            width: 400,
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: new BoxDecoration(
                        color: Colors.amber,
                        borderRadius: new BorderRadius.circular(60)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.add_shopping_cart_sharp,
                          size: 35,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          // bottomsheet();
                        },
                      ),
                    )),
              ),
            ),
          ),
          Container(
              child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    foodname,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      des,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 5, 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text("   4.0     |     "),
                        Icon(
                          Icons.timer,
                          color: Colors.amber,
                        ),
                        Text("  45 mins     |     "),
                        Icon(
                          Icons.delivery_dining,
                          color: Colors.amber,
                        ),
                        Text("  50rs          "),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    ),
  );
}

Widget categories(String name, String image) {
  // categories
  return

      // Container(
      //   // margin: EdgeInsets.fromLTRB(10, 10, 20, 10),
      //   height: 100.0,
      //   child: ListView(
      //     scrollDirection: Axis.horizontal,
      //     children: <Widget>[
      Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
    child: Column(
      children: [
        Container(
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.fill, image: NetworkImage(image))),
          width: 65.0,
          height: 80.0,
        ),
        Title(color: Colors.amber, child: Text(name)),
      ],
    ),
  );
  //   ],
  // ));
}

// class DataSearch extends SearchDelegate<String> {
//   final cities = [
//     "dfghfd",
//     "Zinger Burger",
//     "Pepperoni Pizza",
//     "hello",
//     "fgdg",
//     "Dfgdfgd",
//     "dfgfdg",
//     "tyry",
//     "yerty",
//   ];
//   final recent = [
//     "Dfgdfgd",
//     "dfgfdg",
//   ];
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//           icon: Icon(Icons.clear),
//           onPressed: () {
//             query = "";
//           })
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//         icon: AnimatedIcon(
//             icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
//         onPressed: () {
//           close(context, null);
//         });
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           foodcard(
//               "Zinger Burger",
//               "crispy fried chicken fillet slathered with a special burger sauce",
//               "images/zinger.jpg"),
//           foodcard(
//               "Pepperoni Pizza",
//               "A meaty feast of pepperoni, mozzarella cheese and tomato sauce",
//               "images/pepperoni.jpg")
//         ],
//       ),
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final suggest = query.isEmpty
//         ? recent
//         : cities.where((p) => p.startsWith(query)).toList();
//     return ListView.builder(
//       itemBuilder: (contex, index) => ListTile(
//         onTap: () {
//           showResults(context);
//         },
//         leading: Icon(Icons.location_city),
//         title: RichText(
//           text: TextSpan(
//               text: suggest[index].substring(0, query.length),
//               style:
//                   TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//               children: [
//                 TextSpan(
//                     text: suggest[index].substring(query.length),
//                     style: TextStyle(color: Colors.grey))
//               ]),
//         ),
//       ),
//       itemCount: suggest.length,
//     );
//   }
// }
