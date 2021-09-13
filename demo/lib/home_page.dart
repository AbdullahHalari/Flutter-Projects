import 'package:demo/test.dart';
import 'package:flutter/material.dart';
import 'package:bottom_bars/bottom_bars.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class HomePage extends StatefulWidget {
//   HomePage({Key key}) : super(key: key);

//   @override
//   _HomePageState createState() => new _HomePageState();

// }

// class _HomePageState extends State<HomePage> {

//   bool _loadingInProgress;

//   @override
//   void initState() {
//     super.initState();
//     _loadingInProgress = true;
//         _loadData();

//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Custom Loading Animation example"),
//       ),
//       body: _buildBody(),
//     );
//   }

//   Widget _buildBody() {
//     if (_loadingInProgress) {
//       return new Center(
//         child: new CircularProgressIndicator(),
//       );
//     } else {
//       return new Center (
//         child: Test(),
//       );
//     }
//   }
//   Future _loadData() async {
//     await new Future.delayed(new Duration(seconds: 5));
//     _dataLoaded();
//   }

//   void _dataLoaded() {
//     setState(() {
//       _loadingInProgress = false;
//     });
//   }

// }
class Bottombar extends StatefulWidget {
  // const Bottombar({ Key  key }) : super(key: key);

  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  
  @override
  Widget build(BuildContext context) {
    
    return BottomBars(
      items: [
        BottomBarsItem(
          page: Scaffold(
            body: Test(),
            // floatingActionButton: FloatingActionButton(onPressed: () {
            //   Test();
            // }),
          ),
          // page: Scaffold(
          //   floatingActionButton: FloatingActionButton(onPressed: () {}),
          // ),
          item: Item(
            icon: Icons.group,
            title: Text("Group"),
          ),
        ),
        BottomBarsItem(
          page: Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: () {
              Test();
            }),
          ),
          // page: Scaffold(
          //   appBar: AppBar(
          //     title: Text("Audio"),
          //   ),
          //   floatingActionButton: FloatingActionButton(onPressed: () {}),
          // ),

          item: Item(
            icon: Icons.ac_unit_outlined,
            title: Text("Audio"),
          ),
        ),
        BottomBarsItem(
          page: Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: () {
              Test();
            }),
          ),
          // page: Scaffold(backgroundColor: Colors.yellow),
          item: Item(
            icon: Icons.home,
            title: Text("Home"),
            color: Colors.grey,
            // activeColor: Colors.yellow,
          ),
        ),
        BottomBarsItem(
          page: Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: () {
              Test();
            }),
          ),
          // page: Scaffold(backgroundColor: Colors.red),
          item: Item(
            icon: Icons.settings,
            title: Text("Settings"),
            color: Colors.grey,
            // activeColor: Colors.red,
          ),
        ),
      ],
    );
  }
}
