import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Profile'),
      ),
      body: Center(
        child: Text('Iki profile lurrd.'),
      ),
    );
  }
}
