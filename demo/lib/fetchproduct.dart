// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:demo/screen/widget/bottom_Contianer.dart';


// Widget fetchData(String collectionName) {
//   return StreamBuilder(
//     stream: FirebaseFirestore.instance
//         .collection(collectionName)
//         .doc(FirebaseAuth.instance.currentUser!.email)
//         .collection("items")
//         .snapshots(),
//     builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//       if (snapshot.hasError) {
//         return Center(
//           child: Text("Something is wrong"),
//         );
//       }

//       return ListView.builder(
//           itemCount: snapshot.data == null ? 0 : snapshot.data!.docs.length,
//           itemBuilder: (_, index) {
//             DocumentSnapshot _documentSnapshot = snapshot.data!.docs[index];
//             void deleteitem() {
//               FirebaseFirestore.instance
//                   .collection(collectionName)
//                   .doc(FirebaseAuth.instance.currentUser!.email)
//                   .collection("items")
//                   .doc(_documentSnapshot.id)
//                   .delete();

              
//             }

//             return Card(
//               elevation: 5,
//               child: ListTile(
//                 leading: Text(_documentSnapshot['name']),
//                 title: Text(
//                   "\$ ${_documentSnapshot['price']}",
//                   style:
//                       TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
//                 ),
//                 trailing: GestureDetector(
//                   child: CircleAvatar(
//                     child: Icon(Icons.remove_circle),
//                   ),
//                   onTap: () {
//                     deleteitem();
//                   return true
//                   },
//                 ),
//               ),
//             );
          
//           }
//           );
          
//     },
    
//   );
// }
