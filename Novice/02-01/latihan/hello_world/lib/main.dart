import 'package:english_words/english_words.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: MyHomePage(title: 'Test Aplication by Mirzax '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class RandomWords extends StatefulWidget {
  // TODO Add build() method
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return Text(_MyHomePageState.asPascalCase);
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 100;

  static String asPascalCase;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _downCount() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Anda menghitung sebanyak :',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: Stack(
        // onPressed: _incrementCounter,
        // tooltip: 'Increment',
        // child: Icon(Icons.keyboard_arrow_up),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 31),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(
                onPressed: _downCount,
                child: Icon(Icons.keyboard_arrow_left),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: _incrementCounter,
              child: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  onPressed: _incrementCounter,
                  icon: Icon(Icons.keyboard_arrow_right),
                  iconSize: 40))
        ],
      ),
    );
  }
}
