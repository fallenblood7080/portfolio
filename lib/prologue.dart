import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'animated_text_flicker.dart';

class Prologue extends StatelessWidget {
  const Prologue({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF252525),
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const AnimatedTextFlicker(title: "Prologue", speed: Duration(milliseconds: 1500), pause: Duration(milliseconds: 500)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  child: Text(
                    """In 2018, a novice adventurer emerged from the shadows, drawn into the enchanting realm of game development. Inspired by the arcane knowledge bestowed upon them in the form of a YouTube video, the spark of creativity ignited, propelling them into an odyssey of pixels and code.
The journey, like any epic tale, had its highs and lows. Battling through the tumultuous landscapes of trial and error, 2019 witnessed the birth of the first creation – "Triangle Rush," a game that ventured bravely onto the Play Store. Alas, success proved elusive, but the sting of defeat only fueled the thirst for knowledge.
Undeterred, the adventurer delved deeper into the mysteries of Unity, forging a sturdy foundation in the arts of C#. As the journey unfolded, they expanded their linguistic repertoire, mastering the incantations of Python and the dance of Kotlin. Yet, the pursuit of mastery extended beyond mere code – the adventurer, seeking to breathe life into virtual realms, delved into the sculpting of dreams using Blender.
Thus, the prologue marks the initial chapters of a relentless pursuit. The saga unfolds, and the odyssey continues....""",
                    style: GoogleFonts.teko(fontSize: 22, color: Colors.white70),
                    softWrap: true,
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}