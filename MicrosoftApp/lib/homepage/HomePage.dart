import 'package:flutter/material.dart';
import './data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Ms shortcut'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () => {},
              iconSize: 30.0,
            )
          ],
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            // builder for simple
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.tealAccent,
                child: Text('${index + 1}'),
              ),
              title: Text(data[index]['key']),
              subtitle: Text(data[index]['use']),
            );
          },
          itemCount: data.length,
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 2.0,
            );
          },
        ));
  }
}

// ListTile(
//         leading: CircleAvatar(
//           backgroundColor: Colors.tealAccent,
//           child: Text('1'),
//         ),
//         title: Text('CTRL + 1'),
//         subtitle: Text('CTRL + 2'),
//       ),
//     );
