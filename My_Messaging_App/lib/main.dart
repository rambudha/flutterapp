import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyMessagingApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    ));

class MyMessagingApp extends StatefulWidget {
  @override
  _MyMessagingAppState createState() => _MyMessagingAppState();
}

class _MyMessagingAppState extends State<MyMessagingApp> {
  String message = '';
  TextEditingController controller = TextEditingController();
  Color themeColor = Colors.red;
  @override
  void changeTest() {
    controller.clear();
    setState(() {
      message = '';
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Messaage Me'),
          // centerTitle: true,
          // backgroundColor: themeColor,
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 260.0,
                color: themeColor,
                child: Center(
                    child: Text(
                  message,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: TextField(
                  controller: controller,
                  maxLength: 30,
                  onChanged: (String value) {
                    // print({'avlaue', value})
                    setState(() => {message = value});
                  },
                  decoration: InputDecoration(
                    focusColor: themeColor,
                    hintText: 'Input your message here',
                    helperText: 'Exam',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2.0,
                      color: themeColor,
                    )),
                    prefixIcon: Icon(
                      Icons.edit,
                      color: themeColor,
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () => {changeTest()},
                child: Text(
                  'Clear the message',
                  style: TextStyle(color: Colors.white),
                ),
                color: themeColor,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    onTap: () => {setState(() => themeColor = Colors.red)},
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () => {setState(() => themeColor = Colors.green)},
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () => {setState(() => themeColor = Colors.blue)},
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () => {setState(() => themeColor = Colors.pink)},
                    child: CircleAvatar(
                      backgroundColor: Colors.pink,
                      radius: 20.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
