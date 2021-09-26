import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/home_page.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';



class Login extends StatefulWidget {
  // const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final storage = new FlutterSecureStorage();

  bool _isHidden = true;
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

  late Scaffold homeScaffold; /*define as required*/
  late Scaffold loginScaffold; /*define as required*/
  void initState() {
    super.initState();
    this._function();
  
  }
  @override
  Widget build(BuildContext context) {
    void login() async {
      SharedPreferences prefs;
  prefs = await SharedPreferences.getInstance();
      FirebaseAuth auth = FirebaseAuth.instance;
      FirebaseFirestore db = FirebaseFirestore.instance;
      final String email = emailController.text;
      final String password = passwordController.text;
      try {
        final UserCredential user = await auth.signInWithEmailAndPassword(
            email: email, password: password);
      await storage.write(key: "uid", value: user.user.uid);
        final DocumentSnapshot snapshot =
            await db.collection("user").doc(user.user.uid).get();
        snapshot.data();
this.setState(() {
  /*
     updating the value of loggedIn to true so it will 
     automatically trigger the screen to display homeScaffold.
  */
    loggedIn = true;
    
  });
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Bottombar()));

        print("user is logged in");
        // final UserCredential user = await auth.createUserWithEmailAndPassword(
        //     email: email, password: password);
        // await db.collection("users").doc(user.user.uid).set({
        //   "email": email,
        //   // "first_name": fname,
        //   // "last_name": lname,
        //   "password": password,
        //   // "confirm_password": cpassword,
        // });
        // print("user is registerd");
      } catch (e) {
        print("error");
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Text(e.toString()),
              );
            });
      }
    }

    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     // image: AssetImage("images/bg2.png"),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: ListView(
              children: [
                Container(
                  // child: Image.asset(
                  //   'images/logohm.png',
                  //   width: 100,
                  //   height: 150,
                  // ),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Welcome back!',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(color: Colors.amber[800]),
                    cursorColor: Colors.red,
                    controller: emailController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(),
                      // focusedBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(color: Colors.amber[800])),
                      fillColor: Color.fromRGBO(255, 255, 255, 0.2),
                      filled: true,
                      // fillColor: Colors.white,
                      hoverColor: Colors.amber[800],
                      labelStyle: TextStyle(color: Colors.white),

                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(color: Colors.blue),
                    cursorColor: Colors.red,
                    controller: passwordController,
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.vpn_key,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(),
                      suffix: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(
                          _isHidden ? Icons.visibility : Icons.visibility_off,
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: (Colors.amber[800])!)),
                      hoverColor: Colors.amber[800],
                      fillColor: Color.fromRGBO(255, 255, 255, 0.2),
                      filled: true,
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber[800],
                        // padding: EdgeInsets.fromLTRB(100, 0, 100, 0)
                      ),
                      onPressed: login,
                      // () {
                      //   print(emailController.text);
                      //   print(passwordController);
                      // },
                      child: Text("Login")),
                ),
                // Container(
                //     // height: 50,
                //     padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                //     child: Column(
                //       children: [
                //         Text(
                //           "Does not have any account?",
                //           style: TextStyle(color: Colors.amber[800]),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: ElevatedButton(
                //               style: ElevatedButton.styleFrom(
                //                   primary: Colors.amber[800],
                //                   padding: EdgeInsets.fromLTRB(100, 0, 100, 0)),
                //               onPressed: () {
                //                 Navigator.push(
                //                     context,
                //                     MaterialPageRoute(
                //                         builder: (context) => ()));
                //               },
                //               child: Text("Sign up")),
                //         ),
                //       ],
                //     ))
              ],
            ),
          ),
        ));
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
