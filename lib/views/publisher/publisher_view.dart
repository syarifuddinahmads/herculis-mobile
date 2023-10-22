import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PublisherView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PublisherView'),
      ),
      body: ListTile(
        leading: Icon(Icons.newspaper),
        title: Text('Publisher Create'),
        onTap: () {
          Get.toNamed("publisher/create");
        },
      ),
    );
  }
}
