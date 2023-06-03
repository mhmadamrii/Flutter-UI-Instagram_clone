import 'package:flutter/material.dart';

class MyPopupMenu extends StatelessWidget {
  // const MyPopupMenu({Key? key}) : super(key: key);
  final Function(String) onSelected;

  const MyPopupMenu({required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: onSelected,
      itemBuilder: (BuildContext context) {
        return const [
          PopupMenuItem(
            value: "Menu one",
            child: Text(
              "Menu one",
            ),
          ),
          PopupMenuItem(
            value: "Menu two",
            child: Text(
              "Menu two",
            ),
          ),
        ];
      },
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.keyboard_arrow_down,
        ),
      ),
    );
  }
}
