import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '그램디파인드'),
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
  var _position=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Slider(
              value: _position,
              onChanged: (var position){
                setState(() {
                  _position=position;
                });
              },
            ),
            new Transform.rotate(angle: _position*2*3.14,child: new Icon(Icons.android),),
            new Transform.rotate(angle: _position*2*3.14,child: new Icon(Icons.android),),
            Text(
              '텍스트는 아이콘 밑에 들어갑니다',
            ),
            RaisedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: Text('안녕안녕'),
                  action: SnackBarAction(
                    label: 'hello',
                    onPressed: () {
                      // Some code to undo the change!
                    },
                  ),
                );
                // Find the Scaffold in the Widget tree and use it to show a SnackBar!
                Scaffold.of(context).showSnackBar(snackBar);
              },
              child: Text('버튼'),
            ),
          ],
        ),
      ),

    );
  }
}
