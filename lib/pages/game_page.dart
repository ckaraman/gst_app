import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 800,
            width: 400,
            child: Image.asset(
              'assets/foto2.jpeg',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(left: 50, bottom: 160, child: customGameWidget()),
          Positioned(left: 200, bottom: 300, child: customGameWidget()),
          Positioned(left: 150, bottom: 600, child: customGameWidget()),
          Positioned(left: 20, bottom: 500, child: customGameWidget())
        ],
      ),
    );
  }

  Container customGameWidget() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.green),
        child: const Icon(
          Icons.sports_esports,
          color: Colors.white,
          size: 50,
        ));
  }
}
