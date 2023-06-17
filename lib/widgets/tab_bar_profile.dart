import 'package:flutter/material.dart';

class TabBarProfile extends StatefulWidget {
  @override
  State<TabBarProfile> createState() => _TabBarProfileState();
}

class _TabBarProfileState extends State<TabBarProfile>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: new TabBar(
            controller: _controller,
            tabs: <Widget>[
              Tab(
                icon: const Icon(Icons.home),
                text: 'Address',
              ),
              Tab(
                icon: const Icon(Icons.my_location),
                text: 'Location',
              ),
            ],
          ),
        ),
        Container(
          child: TabBarView(
            controller: _controller,
            children: [
              Text("Address content"),
              Text("Location content"),
            ],
          ),
        ),
      ],
    );
  }
}
