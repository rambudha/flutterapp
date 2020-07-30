import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About us'),
      ),
      body: Container(
        child: Text(
            'This is about the company who will be willing to develop more robust tech'),
      ),
    );
  }
}
