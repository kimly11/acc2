import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Builder(
            builder: (BuildContext context) {
              return ElevatedButton(
                onPressed: () {
                  // Show a SnackBar using Scaffold.of(context)
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Hello, from Snackbar'),
                    ),
                  );
                },
                child: Text('SHOW SNACKBAR'),
              );
            },
          ),
        ),
      ),
    );
  }
}