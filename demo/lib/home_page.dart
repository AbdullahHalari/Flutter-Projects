import 'package:demo/test.dart';
import 'package:flutter/material.dart';
import 'dart:async';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();

}

class _HomePageState extends State<HomePage> {

  bool _loadingInProgress;

  @override
  void initState() {
    super.initState();
    _loadingInProgress = true;
        _loadData();

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Custom Loading Animation example"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_loadingInProgress) {
      return new Center(
        child: new CircularProgressIndicator(),
      );
    } else {
      return new Center (
        child: Test(),
      );
    }
  }
  Future _loadData() async {
    await new Future.delayed(new Duration(seconds: 5));
    _dataLoaded();
  }

  void _dataLoaded() {
    setState(() {
      _loadingInProgress = false;
    });
  }

}