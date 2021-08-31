import 'package:flutter/material.dart';
import 'package:hungryman/carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';

// import 'package:bottom_bars/bottom_bars.dart';
class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          title: Center(child: Text("HUNGRY MAN 😛😋")),
          backgroundColor: Colors.amber[800],
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.close),
          ),
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
                    onSubmitted: (submittedText) {},
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
                            image: AssetImage("images/bg2.png"),
                            fit: BoxFit.cover))),
                Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("images/bg2.png"),
                            fit: BoxFit.cover))),
                Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("images/bg1.jpg"),
                            fit: BoxFit.cover)),
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
                  categories(),
                  categories(),
                  categories(),
                  categories(),
                  categories(),
                  categories(),
                  categories(),
                  categories(),
                ],
              ),
            ),
            // divider
            Divider(
              height: 10,
              thickness: 5.0,
            ),
            foodcard(),
            foodcard(),
          ],
        ),
      ),
    );
  }
}

Widget foodcard() {
  // food card

  return Container(
    height: 330,
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
                      "images/bg2.png",
                    ))),
            height: 200,
            width: 400,
            // child: Text("data"),
          ),
          Container(
              child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Zinger Burger",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Zinger Burger nksdhfdsufldsjfljsdljflsdjfl sadipoidsodadjgvfgvjhfgvjhgvj",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
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
                      Text("  50rs          ")
                    ],
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    ),
  );
}

Widget categories() {
  return // categories

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
                  fit: BoxFit.fill, image: AssetImage("images/bg2.png"))),
          width: 65.0,
          height: 80.0,
        ),
        Title(color: Colors.amber, child: Text("data")),
      ],
    ),
  );
  //   ],
  // ));
}
