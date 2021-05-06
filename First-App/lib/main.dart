import 'package:flutter/material.dart';

void main()=>
  runApp(MaterialApp(
    home: Home()
  ));
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This build is overwritten for each build
    // This stuff builds the container
    // Only the change in code is updated.
    return Scaffold(// The Scaffold is the outer representation of app
      // This is wrapper for the layout
      appBar: AppBar(//This is in the Appbar
        title: Text("Phela App"), // We need Text to display within a widget
        centerTitle: true, // This is to center the title a Property
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
              child: Image.asset("assests/first.jpg")
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text("1"),
            ),
          ),
          Expanded(
            flex: 3,
          child: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.amber,
            child: Text("2"),
          ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.red,
              child: Text("3"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Daaba'),
        backgroundColor: Colors.blue[400],
      ),
    );
  }
}
