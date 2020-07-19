import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner:
        false, // to remove the debug mode on testing devicce
    home: RigoNepal()));

class RigoNepal extends StatefulWidget {
  @override
  _RigoNepalState createState() => _RigoNepalState();
}

class _RigoNepalState extends State<RigoNepal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Retainer'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Image Retentions'),
            Image.asset('image/me.jpg')
          ],
        ),
      ),
    );
  }
}
