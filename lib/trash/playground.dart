import 'package:flutter/material.dart';

class Playground extends StatelessWidget {
  const Playground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(children: [
            Text("Some text"),
            Text("Some text"),
          ],),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Text("Hello"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
