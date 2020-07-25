import 'package:flutter/material.dart';
import 'package:flutter_insta/flutter_insta.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FlutterInsta flutterInsta;

  @override
  void initState() {
    super.initState();
    flutterInsta = new FlutterInsta("coding_boy_"); //write username here
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("Print Details"),
            onPressed: () {
              printDetails();
            },
          ),
        ),
      ),
    );
  }

  //get user's detail
  void printDetails() {
    print("Username : ${flutterInsta.username}");
    print("Followers : ${flutterInsta.followers}");
    print("Folowing : ${flutterInsta.following}");
    print("Bio : ${flutterInsta.bio}");
    print("Website : ${flutterInsta.website}");
    print("Profile Image : ${flutterInsta.imgurl}");
  }
}
