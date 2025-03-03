import 'package:flutter/material.dart';

void main() {
  runApp(KimlyApp());
}

class KimlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showMyAlertDialog(context); // Trigger the alert dialog
          },
          child: const Text('Show Alert Dialog'),
        ),
      ),
    );
  }
}

void showMyAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Alert Dialog Title'),
        content: const Text('This is a sample alert dialog message.'),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
          ),
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
              // Add any additional logic here
            },
          ),
        ],
      );
    },
  );
}