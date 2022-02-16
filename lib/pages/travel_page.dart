import 'package:flutter/material.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({Key? key}) : super(key: key);

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
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
          Positioned(left: 70, bottom: 110, child: customTravelWidget()),
          Positioned(left: 140, bottom: 340, child: customTravelWidget()),
          Positioned(left: 250, bottom: 600, child: customTravelWidget()),
          Positioned(left: 200, bottom: 500, child: customTravelWidget()),
          Positioned(left: 70, bottom: 450, child: customTravelWidget()),
          Positioned(left: 280, bottom: 250, child: customTravelWidget())
        ],
      ),
    );
  }

  Container customTravelWidget() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.red),
        child: const Icon(
          Icons.card_travel_rounded,
          size: 50,
          color: Colors.white,
        ));
  }
}
