import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: RigoNepal(),
    ));

class RigoNepal extends StatefulWidget {
  @override
  _RigoNepalState createState() => _RigoNepalState();
}

class _RigoNepalState extends State<RigoNepal> {
  String name = 'Yinggy';

  void _onClicked(nam) {
    if (nam == 'Yinggy')
      setState(() => name = 'Yinggy App');
    else
      setState(() => name = 'Yinggy');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Ryamsey Ryam was here'),
            RaisedButton(
              onPressed: () => _onClicked(name),
              child: Text(
                'please click me Here',
              ),
            ),
            FlatButton(
              onPressed: () => _onClicked(name),
              child: Text('Flat button click'),
            ),
            IconButton(
              onPressed: () => _onClicked(name),
              icon: Icon(Icons.headset),
            )
          ],
        ),
      ),
    );
  }
}
