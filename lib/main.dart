import 'package:flutter/material.dart';

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
        title: Text('App'),
        centerTitle: true,
        backgroundColor: Colors.amber[900],
      ),
      body: Center(
        child: Image.asset('assets/_MG_0920.JPG'),
        // child: Image.network('https://images.unsplash.com/photo-1505506874110-6a7a69069a08?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=387'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber[900],
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


