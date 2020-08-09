import 'package:Project_app/ui/audio2.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'audio2.dart';

class Aud2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mybody = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/wp2.jpg'), fit: BoxFit.cover),
      ),
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage('assets/shape.jpg'), fit: BoxFit.cover),
              border: Border.all(width: 3, color: Colors.grey),
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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '   #Ed Sheeran',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade300,
                        fontStyle: FontStyle.italic),
                  ),
                  Container(
                    height: 25,
                    width: 400,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          color: Colors.grey,
                          height: 40,
                          width: 290,
                          child: appproject1(),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          /* Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                'SHAPE OF YOU',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade300,
                ),
              ),
              Container(
                height: 100,
                width: 200,
                child: appproject1(),
              ),
            ],
          ),*/
        ],
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 80,
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
