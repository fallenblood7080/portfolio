import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedTextFlicker extends StatelessWidget {
  final String title;
  final Duration speed;
  final Duration pause;
  final double fontSize;
  const AnimatedTextFlicker({
    super.key, required this.title, required this.speed, required this.pause, required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: DefaultTextStyle(
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 72,
          color: Colors.white,
          shadows: [
            Shadow(
              blurRadius: 7.0,
              color: Colors.white,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: AnimatedTextKit(
          pause: pause,
          repeatForever: true,
          animatedTexts: [
            FlickerAnimatedText(
              title.toUpperCase(),
              speed: speed,
              entryEnd: 0.3,
              textStyle: GoogleFonts.teko(fontSize: fontSize, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}