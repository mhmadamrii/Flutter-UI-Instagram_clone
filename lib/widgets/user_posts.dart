// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String userAvatar;
  const UserPosts({required this.userAvatar});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      userAvatar,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Column(
                    children: [
                      Text(
                        "Lorem Ipsum",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Dolor sit amet",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          child: Image.network(
            "https://picsum.photos/200/200",
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border_outlined,
                    size: 32,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage(
                      "lib/assets/bubble-chat.png",
                    ),
                    size: 32,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage(
                      "lib/assets/send.png",
                    ),
                    size: 28,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage(
                  "lib/assets/save-instagram.png",
                ),
              ),
            )
          ],
        )
        // Image.network(
        //   'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
        // ),
      ],
    );
  }
}
