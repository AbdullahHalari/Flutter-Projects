import 'package:flutter/material.dart';


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
    onPressed: () {

    },
    icon: Icon(Icons.close),
  ),
      ),
      ),
      body: SingleChildScrollView(
        child:
        Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: TextField(
                              onSubmitted: (submittedText) {
                                
                              },
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[300],
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black38,
                                  ),
                                  focusedBorder: OutlineInputBorder(
         borderSide: BorderSide(color: Colors.black, width: 1),                                    borderRadius: BorderRadius.circular(25)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 1),                               borderRadius:
                                    BorderRadius.circular(30)),
                                    labelText: 'Search')),
            ),
          )
        ],
      ),
      )
    );
  }
}
