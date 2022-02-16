import 'package:flutter/material.dart';

import 'game_page.dart';
import 'sport_page.dart';
import 'travel_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const <Widget>[
              TabBar(
                tabs: [
                  Tab(text: ' Game Loc.'),
                  Tab(text: 'Sports loc.'),
                  Tab(text: 'Travel Loc.'),
                ],
              ),
              Expanded(
                  child: TabBarView(children: <Widget>[
                GamePage(),
                SportPage(),
                TravelPage(),
              ]))
            ],
          )),
    );
  }
}
