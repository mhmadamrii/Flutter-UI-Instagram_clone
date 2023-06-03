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
                            fontWeight: FontWeight.bold, fontSize: 14),
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
        // Image.network(
        //   'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
        // ),
      ],
    );
  }
}
