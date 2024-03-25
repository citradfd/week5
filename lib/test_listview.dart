import 'package:flutter/material.dart';

class BuilderListView extends StatelessWidget {
  BuilderListView({Key? key}) : super(key: key);

  final growableList = List<int>.generate(100, (index) => ++index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: growableList.length,
        itemBuilder: (context, index) {
          final data = growableList[index];
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '$data',
                style: const TextStyle(fontSize: 50),
              ),
            ),
          );
        },
      ),
    );
  }
}