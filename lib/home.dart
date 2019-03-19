import 'package:flutter/material.dart';
import 'contact_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Motoclubs'),
        leading: Icon(Icons.menu),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: <Widget>[
          ContactList()
        ],
      )
    );
  }
}
