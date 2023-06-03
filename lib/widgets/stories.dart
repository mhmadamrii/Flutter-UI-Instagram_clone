import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://picsum.photos/id/237/200/300",
              ),
              radius: 30,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://picsum.photos/id/237/200/300",
              ),
              radius: 30,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://picsum.photos/id/237/200/300",
              ),
              radius: 30,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://picsum.photos/id/237/200/300",
              ),
              radius: 30,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://picsum.photos/id/237/200/300",
              ),
              radius: 30,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://picsum.photos/id/237/200/300",
              ),
              radius: 30,
            ),
          ),
        ],
      ),
    );
  }
}
