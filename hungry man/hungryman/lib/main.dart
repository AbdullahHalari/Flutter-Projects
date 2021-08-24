import 'package:flutter/material.dart';
import 'package:hungryman/home.dart';
import 'package:hungryman/login.dart';
import 'package:hungryman/signup.dart';
import 'package:firebase_core/firebase_core.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    
    return FutureBuilder(
    
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Container(
            child: Text("something went wrong"),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
              title: 'HUNGRY MAN',
              

              home: Form()
            );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Container();
      },
    );
    
  }
}

class Form extends StatefulWidget {
  // const Form({ Key? key }) : super(key: key);
//
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: 
      
          // Image.asset('images/gwgold.png'),
          Container(
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg2.png"),
            fit: BoxFit.cover,
          ),
            ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: ListView(
            children: [


              Container(
                alignment: Alignment.center,
                child: Text("HUNGRY MAN",style: TextStyle(
                  fontSize: 40,
                  color: Colors.amber[800],
                  fontWeight:FontWeight.w700
                  
                  
                ),)
                 
                // Title(color: Colors.white, child: Text("WELCOME")),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("you enjoy your meal.",style: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                  
                ),)
                 
                // Title(color: Colors.white, child: Text("WELCOME")),
              ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //         context, MaterialPageRoute(builder: (context) => Login()));
            //   },
            //   child: Text("button")),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Image.asset('images/logohm.png',width: 100, height: 150,),
            ),

              Container(
                // height: 50,
              padding: EdgeInsets.fromLTRB(10, 40, 10, 30),
              
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[800],
                  ),
                    onPressed: () {
                      Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Login())
                      );
                    },
                    child: Text("login")),
              ),
              Container(
                // height: 50,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                   primary: Colors.amber[800]
                  ),
                    onPressed: () {
                      Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Text("signup")),
              ),
            ],
          ),
        ),
      )

    );
  }
}


