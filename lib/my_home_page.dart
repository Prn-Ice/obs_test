import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obs_test/controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GetBuilder<Controller>(
        init: Controller(), // INIT IT ONLY THE FIRST TIME
        builder: (_) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                  child: Text(
                    '${_.counter.count.value}',
                  ),
                ),
                onTap: _.increment,
              ),
              GestureDetector(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                  child: Text(
                    '${_.counter.count.value}',
                  ),
                ),
                onTap: _.increment,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
