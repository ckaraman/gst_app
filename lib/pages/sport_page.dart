import 'package:flutter/material.dart';

class SportPage extends StatefulWidget {
  const SportPage({Key? key}) : super(key: key);

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
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
          Positioned(left: 50, bottom: 160, child: customSportWidget()),
          Positioned(left: 200, bottom: 300, child: customSportWidget()),
          Positioned(left: 150, bottom: 600, child: customSportWidget())
        ],
      ),
    );
  }
}

Container customSportWidget() {
  return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blue),
      child: const Icon(
        Icons.sports_football,
        size: 50,
        color: Colors.white,
      ));
}
