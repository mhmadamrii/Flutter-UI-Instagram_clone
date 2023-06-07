import 'package:flutter/material.dart';

class OwnStories extends StatelessWidget {
  final String imgSrc;
  const OwnStories({required this.imgSrc});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: CircleAvatar(
        backgroundImage: NetworkImage(
          imgSrc,
        ),
        radius: 50,
      ),
    );
  }
}
