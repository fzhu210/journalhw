import 'package:flutter/material.dart';  
import 'package:flutter/services.dart';
import 'widgets/entry.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Journal',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Builder(
        builder: (context) => Center(      
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,    
        children: <Widget>[
          ElevatedButton(
          child: Icon(
            Icons.book,color: Color.fromARGB(255, 159, 212, 255),
            size: 48.0),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => JournalEntryForm()),
            );
          },
        ),
        ])
    ))
    );
  }
}

void main(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitUp
  ]);
  runApp(Home());
} 

