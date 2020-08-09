import 'package:Project_app/ui/aud.dart';
import 'package:Project_app/ui/aud2.dart';
import 'package:Project_app/ui/aud3.dart';
import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mybody = Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('assets/wp1.jfif'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        //color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage('assets/mitron.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      margin: EdgeInsets.all(20),
                      height: 100,
                      width: 100,
                      //child: Aud(),
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.grey.shade900,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0)),
                      onPressed: () {
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) => Aud()));
                      },
                      child: new Text('Sawarne Lage'),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        //color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage('assets/shape.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      margin: EdgeInsets.all(20),
                      height: 100,
                      width: 100,
                      //child: Aud2(),
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.grey.shade900,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Aud2()));
                      },
                      child: new Text('Shape of you'),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        //color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage('assets/ratri.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      margin: EdgeInsets.all(20),
                      height: 100,
                      width: 100,
                      //child: Aud2(),
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.grey.shade900,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Aud3()));
                      },
                      child: new Text('Akh Lad Jave'),
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
          actions: <Widget>[Icon(Icons.search)],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
          backgroundColor: Colors.black,
          title: Text('MUSIC',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white)),
        ),
        body: mybody,
      ),
    );
  }
}
