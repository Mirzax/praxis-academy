import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'My App',
        home: MyHomePage(),
      ),
    );

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.fromLTRB(8.0, 25.0, 8.0, 0.0),
      decoration: BoxDecoration(color: Colors.indigo[500]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.menu),
              iconSize: 30,
              tooltip: 'Navigation menu',
              color: Colors.grey,
              onPressed: null),
          Expanded(
            child: title,
          ),
          IconButton(
              icon: Icon(Icons.search),
              iconSize: 30,
              tooltip: 'Search',
              alignment: Alignment.center,
              onPressed: null)
        ],
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: <Widget>[
        MyAppBar(
          title: Text(
            'This is Title',
            style: Theme.of(context).primaryTextTheme.title,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              'Hello',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w200),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              'World!',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: FloatingActionButton(
                tooltip: 'add',
                child: Icon(Icons.keyboard_arrow_up),
                onPressed: null),
          ),
        ),
      ]),
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[Text('Hello!')],
      //  ),
      // ),
    );
  }
}
