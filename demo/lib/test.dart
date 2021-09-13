import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:demo/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Test extends StatefulWidget {
  // const Test({ Key? key }) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final storage = new FlutterSecureStorage();
  bool loggedIn = false;
  Future<Null> _function() async {
    SharedPreferences prefs;
    prefs = await SharedPreferences.getInstance();
    this.setState(() {
      if (prefs.getString("email") != null) {
        loggedIn = true;
      } else {
        loggedIn = false;
      }
    });
  }

  Scaffold homeScaffold; /*define as required*/
  Scaffold loginScaffold; /*define as required*/
  void initState() {
    super.initState();
    this._function();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("search"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                })
          ],
        ),
        body: Container(
            child: ElevatedButton(
                onPressed: () async {
                  try {
                    SharedPreferences prefs;
                    prefs = await SharedPreferences.getInstance();
                    // await googleSignIn.signOut();
                    prefs.clear();
                    // prefs.commit();
                    this.setState(() {
                      /*
     updating the value of loggedIn to false so it will 
     automatically trigger the screen to display loginScaffold.
  */
                      loggedIn = false;
                    });
                    await FirebaseAuth.instance.signOut();
                    await storage.delete(key: "uid");
                    print("object");
                  } catch (e) {
                    print(e.message);
                  }
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text("logout"))));
  }
}

class DataSearch extends SearchDelegate<String> {
  final cities = [
    "dfghfd",
    
    "fgdg",
    "Dfgdfgd",
    "dfgfdg",
    "tyry",
    "yerty",
  ];
  final recent = [
    "Dfgdfgd",
    "dfgfdg",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        child: Card(
          color: Colors.red,
          child: Text("abdullah"),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggest = query.isEmpty
        ? recent
        : cities.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (contex, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.location_city),
        title: RichText(
          text: TextSpan(
              text: suggest[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggest[index].substring(query.length),
                    style: TextStyle(color: Colors.grey))
              ]),
        ),
      ),
      itemCount: suggest.length,
    );
  }
}
