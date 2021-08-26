import 'package:flutter/material.dart';


class Call extends StatefulWidget {
  // const call({ Key ? key }) : super(key: key);

  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Calls",
                style: TextStyle(fontSize: 20, color: Colors.white),
                // children: <TextSpan>[
                //   TextSpan(
                //     text: '\n    upto 200000 members',
                //     style: TextStyle(
                //       color: Colors.grey[200],
                //       fontSize: 16,
                //     ),
                //   ),
                // ]
                ),
          ),
          backgroundColor: Color.fromRGBO(0, 136, 204, 100),
        ),
        body: Column(
          children: [
        //     TextField(
        //   decoration: InputDecoration(
        //       border: OutlineInputBorder(), hintText: 'Add People'),
        // ),

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
            'assets/duck.png'        ),
    ),
                        ),
                
           
           ),
         ),
        Center(
        child: Container(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            'No recent calls',
            style: TextStyle(
              fontFamily: 'SF Pro',
              fontWeight: FontWeight.w700,
              fontSize: 24.0,
            ),
          ),
        ),
      ),
      Center(
        child: Container(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            'Your recent voice and video calls will appear here',
            style: TextStyle(
              fontFamily: 'SF Pro',
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
      
          ],
        ),
      floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.blue[700],
                hoverColor: Colors.black,
                child: Icon(Icons.call, color: Colors.white),
                onPressed: () {},
              ),
        
        
        
        
        );
  }
}
