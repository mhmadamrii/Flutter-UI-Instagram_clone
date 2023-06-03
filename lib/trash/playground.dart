import 'package:flutter/material.dart';

class Playground extends StatelessWidget {
  const Playground({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            10,
          ),
          child: Column(
            children: [
              Text(
                "Hello world from Arna Febianti",
                style: TextStyle(
                  color: Colors.amber,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
