

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alert Dailog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Alert Dailog'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  AlertDialog _alertDialog = AlertDialog(
    content: Card(
      color: Color.fromARGB(200, 225, 140, 185),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.all_out),
            title: Text('Hey Honey where are you going Tonight'),
            subtitle: Text('Music by Relbeo preky. Lyrics by Aldey Bee.'),
          ),
          ButtonTheme.bar( // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () { /* ... */ },
                ),
                FlatButton(
                  child: const Text('LISTEN'),
                  onPressed: () { /* ... */ },
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.cyan[100],
        child: Center(
          child: SizedBox(
            height: 76.0,
            width: 196.0,
            child: RaisedButton(
              padding: EdgeInsets.all(20.0),
              color: Colors.pinkAccent,
              child: Text(
                'Dare to Touch',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(right: Radius.circular(40.0))
              ),
              onPressed: () {
                showDialog(context: context, builder: (BuildContext context) => _alertDialog);
              },
            ),
          ),

        ),
      ),
    );
  }
}
