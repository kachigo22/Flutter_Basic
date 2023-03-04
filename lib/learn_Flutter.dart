// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Flutter'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_important_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/einstein3.jpg'),
            SizedBox(
              height: 25.0,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.grey,
              child: Center(
                child: Text(
                  'flutter',
                  style: TextStyle(color: Colors.blue, fontSize: 24),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('home'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('home'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('home'),
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('fire Department'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(
                    () {
                      isSwitch = newBool;
                    },
                  );
                }),
            Image.network(
                'https://imageio.forbes.com/specials-images/imageserve/5f962df3991e5636a2f68758/0x0.jpg?format=jpg&crop=812,457,x89,y103,safe&width=1200')
          ],
        ),
      ),
    );
  }
}
