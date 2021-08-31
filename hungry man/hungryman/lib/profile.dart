import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  // const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String name = " loading....";
  String email = "loading....";
  

  void getData() async {
    User user = await FirebaseAuth.instance.currentUser;
    var data = await FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .get();
    setState(() {
      name = data.data()['first_name'];
      email = data.data()['email'];
    });
  }

  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: 500,
                height: 200.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.dstATop),
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"),
                        fit: BoxFit.cover)),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                    },
                    child: 
                        CircleAvatar(
                          radius: 55,
                          backgroundColor: Color(0xffFDCF09),
                          child:
                              // _image != null
                              // ?
                              // ClipRRect(
                              //     borderRadius: BorderRadius.circular(50),
                              //     // child: Image.file(
                              //     //   // _image,
                              //     //   width: 100,
                              //     //   height: 100,
                              //     //   fit: BoxFit.fitHeight,
                              //     // ),
                              //   )
                              Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(50)),
                            width: 100,
                            height: 100,
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.grey[800],
                            ),
                            
                          
                          ),
                          
                        ),
                        
                     
                  
                  ),
                )
              
                ),
            Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(name),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(email),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
