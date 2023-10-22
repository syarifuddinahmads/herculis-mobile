import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewspaperView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Newspaper'),
      ),
      body: ListTile(
        leading: Icon(Icons.newspaper),
        title: Text('Newspaper Create'),
        onTap: () {
          Get.toNamed("newspaper/create");
        },
      ),
    );
  }
}
