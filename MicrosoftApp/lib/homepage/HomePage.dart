import 'package:MicrosoftApp/homepage/aboutus.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import './data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                  padding: EdgeInsets.all(0),
                  child: Container(
                    color: Colors.redAccent,
                    child: Center(
                      child: Text(
                        'Banking Details',
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ),
                  )),
              ListTile(
                leading: Icon(Icons.home),
                onTap: () => {Navigator.pop(context)},
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              ListTile(
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AboutUs();
                  }))
                },
                leading: Icon(Icons.info_outline),
                title: Text(
                  'About us',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.rate_review),
                onTap: () => {
                  launch("https://www.youtube.com"),
                },
                title: Text(
                  "Rate",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              ListTile(
                onTap: () => {
                  Share.share("Hello there"),
                },
                leading: Icon(Icons.share),
                title: Text(
                  'Share',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('My Ms shortcut'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AboutUs();
                }))
              },
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
