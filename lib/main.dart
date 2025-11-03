import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.red, // darker top bar
          statusBarIconBrightness: Brightness.light,
        ),
      ),

      body: Row(
        children: <Widget>[
          Expanded(
              child: Image.asset('assets/logo.avif')
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30),
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.pinkAccent,
              padding: EdgeInsets.all(30),
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
              padding: EdgeInsets.all(30),
              child: Text('3'),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[600],
        onPressed: () {   },
        child: const Text("+", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25
        ),),
      ),
    );
  }
}



