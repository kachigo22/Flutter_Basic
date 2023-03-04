import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
 

  int itemCount =20;

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text('Item'),
        leading: Icon(Icons.person),
        trailing: Icon(Icons.select_all),
      );
    });
  }
}
