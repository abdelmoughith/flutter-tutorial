import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();

}

class _ChooseLocationState extends State<ChooseLocation> {

  @override
  Widget build(BuildContext context) {
    print('build function run');
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose location', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[200],
      body: Text('Increase counter')
    );
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose function run');
  }


}
