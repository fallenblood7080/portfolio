import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'animated_text_flicker.dart';
import 'missionSlide.dart';

class Mission extends StatelessWidget {
  const Mission({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF252525),
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const AnimatedTextFlicker(title: "Mission", speed: Duration(milliseconds: 1500), pause: Duration.zero),
        CarouselSlider(items: const [
          TriangleRush(),
          NinjaFrog(),
          ShipOutofControl(),
          DungeonArcher(),
          OperationEcho(),
        ], options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          height: 500,
          enlargeCenterPage: true,
        )),
      ]),
    );
  }
}
