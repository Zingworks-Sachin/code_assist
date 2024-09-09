import 'package:flutter/material.dart';

// Dummy StatefulWidget with unused code and redundant implementations
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Redundant variable
  var counter = 0;
  var anotherCounter = 0;

  _incrementCounter() {
    // Unused method
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Redundant code with incorrect return type assertion
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Use of var for widget types
            var text = Text(
              'You have pushed the button this many times:',
            ),
            // Redundant widget creation
            text,
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            // Commented code that was redundant
            // Text(
            //   '$anotherCounter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

void main() {
  runApp(MyApp()); // No type assertion for MyApp
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(), // No SOLID principles followed
    );
  }
}

// Unused helper method
Widget buildText(String data) {
  return Text(data);
}
