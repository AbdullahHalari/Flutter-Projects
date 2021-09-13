import 'package:flutter/material.dart';

class Bbq extends StatefulWidget {
  // const Bbq({ Key? key }) : super(key: key);

  @override
  _BbqState createState() => _BbqState();
}

class _BbqState extends State<Bbq> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Card(
          
          child: Text("hello"),
        ),
      ),
    );
  }
}