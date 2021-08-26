import 'package:flutter/material.dart';

class App extends StatefulWidget {
  // const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "New Group",
                style: TextStyle(fontSize: 20, color: Colors.white),
                children: <TextSpan>[
                  TextSpan(
                    text: '\nupto 200000 members',
                    style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 16,
                    ),
                  ),
                ]),
          ),
          backgroundColor: Color.fromRGBO(0, 136, 204, 100),
        ),
        body: Column(
          children: [
            TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(), hintText: 'Add People'),
        ),

         Center(
           child: Padding(
             padding: const EdgeInsets.all(30.0),
             child: CircleAvatar(
               radius: 80,
               
               backgroundColor: Colors.transparent,
                        // backgroundImage: NetworkImage(
                        //     "assets/duck.png" ),
                        child: ClipOval(
        child: Image.asset(
          'assets/duck.png',
        ),
    ),
                        ),
                
           
           ),
         ),
        Center(
        child: Container(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            'No Contact Yet',
            style: TextStyle(
              fontFamily: 'SF Pro',
              fontWeight: FontWeight.w700,
              fontSize: 24.0,
            ),
          ),
        ),
      ),
          ],
        ),

        
        
        
        
        );
  }
}
