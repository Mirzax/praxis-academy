import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      home: new MyStatelessWidget()));
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        
        appBar: new AppBar(title: new Text("Stateless Widget"),
        
        leading: new Container(
          
          padding: EdgeInsets.all(5),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new MyCard(
                
                icon: Icon(Icons.book),

              )
            ],
          ),

        ),),
        body: new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // new Text("Hey"),
                  // new Text("My name"),
                  // new Text("Is Zakku")

                  new MyCard(
                      title: new Text("Ini Kue!",
                          style: new TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w200)),
                      icon: new Icon(Icons.cake,
                          size: 40.0, color: Colors.redAccent),
                      ),
                  new MyCard(
                      title: new Text("Ini Donat!",
                          style: new TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w200)),
                      icon: new Icon(Icons.donut_large, 
                          size: 40.0, color: Colors.brown)),
                  new MyCard(
                      title: new Text("Ini Mata!",
                          style: new TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w200)),
                      icon: new Icon(Icons.visibility,
                          size: 40.0, color: Colors.blue))
                ]
              )
            ),
        // bottomNavigationBar: new BottomNavigationBar(),
          );

  }
}

class MyCard extends StatelessWidget {
  //adding constructor
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return new Container(
        //adding bottom padding on card
        padding: new EdgeInsets.only(bottom: 20.0),
        child: new Card(
            child: new Container(
                //adding padding inside card
                padding: new EdgeInsets.all(15.0),
                child: new Column(children: <Widget>[
                  // new Text("I love Flutter"),
                  // new Icon(Icons.favorite)

                  this.title,
                  this.icon
                ]))));
  }
}
