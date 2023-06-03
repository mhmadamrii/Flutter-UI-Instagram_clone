import 'package:flutter/material.dart';
import 'package:newest/widgets/popup_menu.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Text(
                "Instagram",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'GrandInsta',
                ),
              ),
              PopupMenuButton<SampleItem>(
                icon: const Icon(Icons.keyboard_arrow_down),
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<SampleItem>>[
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemOne,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Following",
                            ),
                            Icon(
                              Icons.people_outline_outlined,
                            )
                          ],
                        ),
                        Divider()
                      ],
                    ),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemOne,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Favorites",
                        ),
                        Icon(
                          Icons.star_border_purple500_outlined,
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline,
                  size: 32,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage(
                    "lib/assets/chat.png",
                  ),
                  size: 30,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
