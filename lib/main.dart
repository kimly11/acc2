import 'package:flutter/material.dart';

void main() {
  runApp(const kimly());
}

class kimly extends StatelessWidget {
  const kimly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('KIM_Drawer')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: const Text('KHON Kimly'),
                accountEmail: const Text('mis2023210005@ppiu.edu.kh'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset('images/kim.jpg',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('images/Nasa.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(title: Text('Home'),leading: Icon(Icons.home), onTap: () {}),
              ListTile(title: Text('Location'),leading: Icon(Icons.location_city), onTap: () {}),
              ListTile(title: Text('Friends'),leading: Icon(Icons.people), onTap: () {}),
              ListTile(title: Text('Setting'),leading: Icon(Icons.settings), onTap: () {}),
              ListTile(title: Text('About'),leading: Icon(Icons.info), onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

