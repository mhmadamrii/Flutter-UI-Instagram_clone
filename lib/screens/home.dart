import 'package:flutter/material.dart';
import 'package:newest/widgets/appbar.dart';
import 'package:newest/widgets/stories.dart';
import 'package:newest/widgets/user_posts.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(),
            SizedBox(
              height: 16,
            ),
            Stories(),
            UserPosts(
              userAvatar: "https://picsum.photos/id/257/200/300",
            ),
            UserPosts(
              userAvatar: "https://picsum.photos/id/337/200/300",
            ),
          ],
        ),
      ),
    );
  }
}
