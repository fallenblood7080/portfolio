import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'animated_text_flicker.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var content = """Greetings, fellow adventurers! 
                    I am Sagar Kushwaha, known in the gaming realm as Fallenblood, a seasoned Unity Game Developer and Programmer. My journey in the realm of game development spans five years, during which I've navigated through the intricacies of both 3D and 2D landscapes.
In my arsenal of coding languages, I wield the mighty C#, Python, and the agile Dart. Not content with just the coding arts, I've dabbled in the arcane arts of 3D modelling and sculpting, crafting immersive models. Flutter, a versatile tool in my inventory, has seen my forays into app development, adding another dimension to my skill set.
I've embarked on numerous quests, both solo and in fellowship with diverse teams. My passion lies not only in coding but in the collaborative dance of creativity and innovation.\n
May your code compile swiftly and your polygons be ever-optimized! 
""";
    return Container(
        color: const Color(0xFF151515),
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 900) {
              return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                const AnimatedTextFlicker(title: "Player Profile", speed: Duration(milliseconds: 2000), pause: Duration(milliseconds: 100),fontSize: 72,),
                DesktopProfileView(content: content)
              ]);
            } else if (constraints.maxWidth <= 900 && constraints.maxWidth > 500) {
              return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                const AnimatedTextFlicker(title: "Player Profile", speed: Duration(milliseconds: 2000), pause: Duration(milliseconds: 100),fontSize: 70,),
                TabletProfileVew(content: content)
              ]);
            } else {
              return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                const AnimatedTextFlicker(title: "Player Profile", speed: Duration(milliseconds: 2000), pause: Duration(milliseconds: 100),fontSize: 55,),
                MobileProfileVew(content: content)
              ]);
            }
          },
        ));
  }
}

class DesktopProfileView extends StatelessWidget {
  const DesktopProfileView({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 2,
            child: Stack(alignment: Alignment.center, children: [
              SizedBox(
                height: 200,
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(256),
                  child: Image.asset("assets/profile.png"),
                ),
              ),
              Image.asset(
                "assets/scan.gif",
                height: 250,
                width: 250,
              ),
            ]),
          ),
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Text(
                content,
                style: GoogleFonts.teko(fontSize: 22, color: Colors.white70),
                softWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabletProfileVew extends StatelessWidget {
  const TabletProfileVew({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 2,
            child: Stack(alignment: Alignment.center, children: [
              SizedBox(
                height: 200,
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(256),
                  child: Image.asset("assets/profile.png"),
                ),
              ),
              Image.asset(
                "assets/scan.gif",
                height: 250,
                width: 250,
              ),
            ]),
          ),
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Text(
                content,
                style: GoogleFonts.teko(fontSize: 22, color: Colors.white70),
                softWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileProfileVew extends StatelessWidget {
  const MobileProfileVew({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Stack(alignment: Alignment.center, children: [
              SizedBox(
                height: 150,
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(256),
                  child: Image.asset("assets/profile.png"),
                ),
              ),
              Image.asset(
                "assets/scan.gif",
                height: 200,
                width: 200,
              ),
            ]),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Text(
                content,
                style: GoogleFonts.teko(fontSize: 18, color: Colors.white70),
                softWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
