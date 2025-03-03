import 'package:flutter/material.dart';

void main() {
  runApp(kimlytableApp());
}

class kimlytableApp extends StatelessWidget {
  // const kimlytable({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'List to App', home: ContactList());
  }
}

class Contact {
  final String name;
  final String email;
  final String phone;
  Contact({required this.name, required this.email, required this.phone});
}

class ContactList extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(name: 'kimly', email: 'kimlyjr11@gmail.com', phone: '070923129'),
    Contact(name: 'kimly', email: 'kimlyjr11@gmail.com', phone: '070923129'),
    Contact(name: 'kimly', email: 'kimlyjr11@gmail.com', phone: '070923129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact List')),
      body: DataTable(
        columns: [
          DataColumn(label: Text('name')),
          DataColumn(label: Text('email')),
          DataColumn(label: Text('phone')),
        ],
        rows:
            contacts.map((contact) {
              return DataRow(
                cells: [
                  DataCell(Text(contact.name)),
                  DataCell(Text(contact.email)),
                  DataCell(Text(contact.phone)),
                ],
              );
            }).toList(),
      ),
    );
  }
}
