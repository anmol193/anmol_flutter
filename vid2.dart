import 'package:Project_app/ui/video2.dart';
import 'package:flutter/material.dart';

class Vid2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mybody = Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              //color: Colors.black,
              image: DecorationImage(
                  image: AssetImage('assets/wp2.jpg'), fit: BoxFit.cover),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 400,
                width: 500,
                child: VideoApp2(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                  border: Border.all(width: 2, color: Colors.grey),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
          actions: <Widget>[
            Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            Icon(Icons.share),
          ],
          backgroundColor: Colors.black,
        ),
        body: mybody,
      ),
    );
  }
}
