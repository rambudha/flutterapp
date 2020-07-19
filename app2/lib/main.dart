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
  bool _value = true;

  void _onSwitchChange(bool val) {
    setState(() => _value = val);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Retainer'),
      ),
      body: Container(
        padding:
            EdgeInsets.only(left: 10.0, top: 30.0, right: 20, bottom: 10.8),
        child: Column(
          children: <Widget>[
            Text('Image Retentions'),
            Image.asset(
              'image/me.jpg',
              height: 150,
              width: 250,
            ),
            TextField(
                decoration: InputDecoration(
                    labelText: 'Enter Name',
                    hintText: 'Ryamsey Ryam',
                    icon: Icon(Icons.people)),
                keyboardType: TextInputType.number),
            Switch(value: _value, onChanged: _onSwitchChange),
            SwitchListTile(
              value: _value,
              onChanged: _onSwitchChange,
              activeColor: Colors.green,
              subtitle: Text('Are you Nepalese'),
              title: Text('Residents'),
            )
          ],
        ),
      ),
    );
  }
}
