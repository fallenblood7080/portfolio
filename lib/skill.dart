import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'animated_text_flicker.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: const Color(0xFF151515),
        padding: const EdgeInsets.all(16),
        child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth < 500) {
                  return const MobileSkillView();
                } else if (constraints.maxWidth < 900) {
                  return const TabletSkillView();
                } else {
                  return const DesktopSkillView();
                }
              },
            ));
  }
}

class DesktopSkillView extends StatelessWidget {
  const DesktopSkillView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const AnimatedTextFlicker(title: "Skills", speed: Duration(milliseconds: 2000), pause: Duration.zero,fontSize: 72,),
      CarouselSlider(
          items: [
            SkillCard(
                skillname: "Unity",
                skillLevel: "82/100",
                skillRank: "Master",
                imgSrc: "assets/Unity.png",
                skillRankColor: Colors.purple.shade600,),
            SkillCard(
                skillname: "C#", skillLevel: "75/100", skillRank: "Apex", imgSrc: "assets/csharp.png", skillRankColor: Colors.red.shade500,),
            SkillCard(
                skillname: "Flutter/Dart",
                skillLevel: "56/100",
                skillRank: "Elite",
                imgSrc: "assets/flutter.png",
                skillRankColor: Colors.orange.shade500),
            SkillCard(
                skillname: "Blender",
                skillLevel: "45/100",
                skillRank: "Virtuoso",
                imgSrc: "assets/blender.png",
                skillRankColor: Colors.green.shade500),
            SkillCard(
                skillname: "Python",
                skillLevel: "40/100",
                skillRank: "Vangruard",
                imgSrc: "assets/python.png",
                skillRankColor: Colors.blue.shade500),
          ],
          options: CarouselOptions(
            autoPlay: true,
            disableCenter: true,
            height: 400,
            viewportFraction: 0.35,
            enlargeCenterPage: true,

          ))
    ]);
  }
}
class TabletSkillView extends StatelessWidget {
  const TabletSkillView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const AnimatedTextFlicker(title: "Skills", speed: Duration(milliseconds: 2000), pause: Duration.zero,fontSize: 70,),
      CarouselSlider(
          items: [
            SkillCard(
                skillname: "Unity",
                skillLevel: "82/100",
                skillRank: "Master",
                imgSrc: "assets/Unity.png",
                skillRankColor: Colors.purple.shade600,),
            SkillCard(
                skillname: "C#", skillLevel: "75/100", skillRank: "Apex", imgSrc: "assets/csharp.png", skillRankColor: Colors.red.shade500,),
            SkillCard(
                skillname: "Flutter/Dart",
                skillLevel: "56/100",
                skillRank: "Elite",
                imgSrc: "assets/flutter.png",
                skillRankColor: Colors.orange.shade500),
            SkillCard(
                skillname: "Blender",
                skillLevel: "45/100",
                skillRank: "Virtuoso",
                imgSrc: "assets/blender.png",
                skillRankColor: Colors.green.shade500),
            SkillCard(
                skillname: "Python",
                skillLevel: "40/100",
                skillRank: "Vangruard",
                imgSrc: "assets/python.png",
                skillRankColor: Colors.blue.shade500),
          ],
          options: CarouselOptions(
            autoPlay: true,
            disableCenter: true,
            height: 400,
            viewportFraction: 0.5,
            enlargeCenterPage: true,

          ))
    ]);
  }
}
class MobileSkillView extends StatelessWidget {
  const MobileSkillView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const AnimatedTextFlicker(title: "Skills", speed: Duration(milliseconds: 2000), pause: Duration.zero,fontSize: 55,),
      CarouselSlider(
          items: [
            SkillCard(
                skillname: "Unity",
                skillLevel: "82/100",
                skillRank: "Master",
                imgSrc: "assets/Unity.png",
                skillRankColor: Colors.purple.shade600,),
            SkillCard(
                skillname: "C#", skillLevel: "75/100", skillRank: "Apex", imgSrc: "assets/csharp.png", skillRankColor: Colors.red.shade500,),
            SkillCard(
                skillname: "Flutter/Dart",
                skillLevel: "56/100",
                skillRank: "Elite",
                imgSrc: "assets/flutter.png",
                skillRankColor: Colors.orange.shade500),
            SkillCard(
                skillname: "Blender",
                skillLevel: "45/100",
                skillRank: "Virtuoso",
                imgSrc: "assets/blender.png",
                skillRankColor: Colors.green.shade500),
            SkillCard(
                skillname: "Python",
                skillLevel: "40/100",
                skillRank: "Vangruard",
                imgSrc: "assets/python.png",
                skillRankColor: Colors.blue.shade500),
          ],
          options: CarouselOptions(
            autoPlay: true,
            disableCenter: true,
            height: 500,
            viewportFraction: 0.8,
            enlargeCenterPage: true,

          ))
    ]);
  }
}

class SkillCard extends StatelessWidget {
  final String skillname;
  final String skillLevel;
  final String skillRank;
  final String imgSrc;
  final Color skillRankColor;

  const SkillCard(
      {super.key, required this.skillname, required this.skillLevel, required this.skillRank, required this.imgSrc, required this.skillRankColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 28),
      child: Container(
        height: 300,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xFF252525),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF252525), Color(0xFF151515)],
            )),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 175,
                height: 175,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(64),
                  child: Image.asset(imgSrc),
                ),
              ),
            ),
            Text(
              "Skill:$skillname",
              style: GoogleFonts.teko(color: Colors.white, fontSize: 28),
            ),
            Text(
              "Level:$skillLevel",
              style: GoogleFonts.teko(color: Colors.white70, fontSize: 24),
            ),
            Text(
              "Rank:$skillRank",
              style: GoogleFonts.teko(color: skillRankColor, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
