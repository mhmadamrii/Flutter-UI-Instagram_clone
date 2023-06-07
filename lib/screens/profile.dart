// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:newest/widgets/own_stories.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  final String _profilePath = "https://picsum.photos/id/237/200/300";
  final int _sizedNumber = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const ImageIcon(
                          AssetImage(
                            "lib/assets/more.png",
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const ImageIcon(
                          AssetImage(
                            "lib/assets/hamburger.png",
                          ),
                          size: 25,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: _sizedNumber.toDouble(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      _profilePath,
                    ),
                    radius: 50,
                  ),
                  Container(
                    width: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: const Column(
                            children: [
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Post",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: const Column(
                            children: [
                              Text(
                                "764",
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: const Column(
                            children: [
                              Text(
                                "259",
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: _sizedNumber.toDouble(),
              ),
              Container(
                child: const Padding(
                  padding: EdgeInsets.all(
                    8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Sapphire Moonlight",
                            style: TextStyle(
                              fontSize: 15.2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Software developer",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: _sizedNumber.toDouble(),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(238, 238, 238, 0.3),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Professional dashboard",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "New tools are now available",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: _sizedNumber.toDouble(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(238, 238, 238, 0.3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 53.0,
                        vertical: 10,
                      ),
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(238, 238, 238, 0.3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 53.0,
                        vertical: 10,
                      ),
                      child: Text(
                        "Share profile",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Row(
                children: [
                  OwnStories(
                    imgSrc: "https://picsum.photos/id/237/200/300",
                  ),
                  OwnStories(
                    imgSrc: "https://picsum.photos/id/237/200/300",
                  ),
                  OwnStories(
                    imgSrc: "https://picsum.photos/id/237/200/300",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
