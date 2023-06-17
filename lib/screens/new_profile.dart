import 'package:flutter/material.dart';

class NewProfile extends StatefulWidget {
  const NewProfile({super.key});

  @override
  State<NewProfile> createState() => _NewProfileState();
}

class _NewProfileState extends State<NewProfile>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: TabBar(
              controller: _controller,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "address",
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: TabBarView(
              controller: _controller,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Press here"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Press here"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
