import 'package:flutter/material.dart';

class Playground extends StatelessWidget {
  final List<String> items =
      List.generate(100, (index) => "Item index: ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          10,
        ),
        child: ListView.builder(itemBuilder: (BuildContext, int index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              print("item tapped: ${items[index]}");
            },
          );
        }),
      ),
    );
  }
}
