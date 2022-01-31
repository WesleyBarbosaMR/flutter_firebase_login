// * Import Libraries
// * Flutter Libraries
import 'package:flutter/material.dart';

// * Project Libraries
import 'package:flutter_firebase_login/pages/login_page.dart';
//import 'package:flutter_firebase_login/pages/register_page.dart';
//import 'package:flutter_firebase_login/pages/home_page.dart';

// * Firebase Libraries
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Flutter&Firebase',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: LoginPage(),
    );
  }
}
