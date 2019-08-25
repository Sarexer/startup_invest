import 'package:flutter/material.dart';

class FinishPage extends StatefulWidget {
  FinishPage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _FinishPageState createState() => _FinishPageState();
}

class _FinishPageState extends State<FinishPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Finish Bleat',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
