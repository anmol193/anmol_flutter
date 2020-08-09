import 'package:Project_app/ui/video.dart';
import 'package:flutter/material.dart';

class Vid extends StatelessWidget {
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
                child: VideoApp(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                  border: Border.all(width: 2, color: Colors.grey),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xcc000000),
                      offset: Offset(0, 2),
                      blurRadius: 4,
                    ),
                    BoxShadow(
                      color: const Color(0x80000000),
                      offset: Offset(0, 6),
                      blurRadius: 20,
                    ),
                  ],
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
          elevation: 120,
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
