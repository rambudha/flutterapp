import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyResumeApp());

class MyResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Resume App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: Text('My Resume App'),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 20.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/me.jpg'),
                          radius: 60.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'Ryamsey Ryam',
                          style: TextStyle(fontSize: 25.0),
                        ),
                        SizedBox(
                          // create space in between
                          height: 5.0,
                        ),
                        Text(
                          'Kathmandu Nepal',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          """
I'm a Full stack web developer based in Kathmandu Nepal looking to grow as a person as well as a developer I'm highly motivated with positive attitude, learning and breaking stuff on a daily basis. I love working with React, Redux, TypeScript, Node and Angular but ready to learn more technologies.""",
                          style: TextStyle(
                            fontFamily: "Ranchers",
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Social Links',
                      style: TextStyle(
                        fontSize: 20.0,
                      )),
                ),
                Card(
                  elevation: 4.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(FontAwesomeIcons.facebook),
                        onPressed: () =>
                            launch('https://www.facebook.com/ryamseyryam'),
                        // onPressed: () => {print("hello workd")},
                        color: Colors.blue,
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.github),
                        onPressed: () =>
                            launch('https://www.github.com/rambudha'),
                        color: Colors.black,
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.twitter),
                        onPressed: () =>
                            launch('https://www.twitter.com/znyakaynz'),
                        color: Colors.blue,
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.instagram),
                        onPressed: () =>
                            launch('https://www.instagram.com/ryamsey__ryam'),
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Skills',
                    style: TextStyle(
                      fontSize: 20.0,
                      // color: Colors.red,
                    ),
                  ),
                ),
                Card(
                  elevation: 4.0,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://toplinetech.com.np/wp-content/themes/topline_tech/images/web.png'),
                      radius: 30.0,
                    ),
                    title: Text('Web Development'),
                    subtitle: Text('HTML, CSS, REACT'),
                  ),
                ),
                Card(
                  elevation: 4.0,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://toplinetech.com.np/wp-content/themes/topline_tech/images/web.png'),
                      radius: 30.0,
                    ),
                    title: Text('Backend Development'),
                    subtitle: Text('NODE, mySQL, Express'),
                  ),
                ),
                // Card(
                //   elevation: 4.0,
                //   child: ListTile(
                //     leading: CircleAvatar(
                //       backgroundImage: NetworkImage(
                //           'https://toplinetech.com.np/wp-content/themes/topline_tech/images/web.png'),
                //       radius: 30.0,
                //     ),
                //     title: Text('Backend Development'),
                //     subtitle: Text('NODE, mySQL, Express'),
                //   ),
                // ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ));
  }
}
