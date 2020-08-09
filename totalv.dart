import 'package:Project_app/ui/vid.dart';
import 'package:Project_app/ui/vid2.dart';
import 'package:flutter/material.dart';

class Total extends StatelessWidget {
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
                            new MaterialPageRoute(builder: (context) => Vid()));
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
                          image: AssetImage('assets/chogada.jpg'),
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
                                builder: (context) => Vid2()));
                      },
                      child: new Text('Chogada'),
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
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
          actions: <Widget>[Icon(Icons.search)],
          backgroundColor: Colors.black,
          title: Text('VIDEO',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white)),
        ),
        body: mybody,
      ),
    );
  }
}
