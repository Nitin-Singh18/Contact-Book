import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class Contact {
  final String name;

  const Contact({required this.name});
}

class ContactBook {
  //Named Constructor
  ContactBook._sharedInstance();
  static final ContactBook _shared = ContactBook._sharedInstance();
  factory ContactBook() => _shared;

  //List to store contacts
  final List<Contact> _contacts = [];

  int get length => _contacts.length;

  //Method to add new contact
  void add({required Contact contact}) {
    _contacts.add(contact);
  }

  //Method to remove contact
  void remove({required Contact contact}) {
    _contacts.remove(contact);
  }

  //Method to get contact through its index value
  //if the index is not out of bound
  Contact? contact({required int atIndex}) =>
      _contacts.length > atIndex ? _contacts[atIndex] : null;
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
    );
  }
}
