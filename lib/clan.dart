
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'animated_text_flicker.dart';

class Clan extends StatelessWidget {
  const Clan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF151515),
      padding: const EdgeInsets.all(16),
      child: LayoutBuilder(builder: (context, constraints){
        if(constraints.maxWidth < 500){
          return const MobileClanView();
        }
        else if(constraints.maxWidth < 900){
          return const TabletClanView();
        }
        else{
          return const DesktopClanView();
        }
      },),
    );
  }
}

class DesktopClanView extends StatelessWidget {
  const DesktopClanView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const AnimatedTextFlicker(title: "Development Clan", speed: Duration(milliseconds: 2000), pause: Duration.zero,fontSize: 72,),
      CarouselSlider(items: const [
                      ClanCard(
              imgSrc: "assets/ideekay.jpeg",
              clanName: "IDeeKay Studios",
              position: "Game Developer - Intern",
              dur: "April 2023",
            ),
            ClanCard(
              imgSrc: "assets/gokapture.jpeg",
              clanName: "GoKapture Event Technology",
              position: "Game Developer",
              dur: "April 2023 - September 2023",
            ),
            ClanCard(imgSrc: "assets/veda.jpg", clanName: "Veda Crew", position: "Game Developer", dur: "May 2023 - July 2023"),
            ClanCard(imgSrc: "assets/insanity.png", clanName: "Insanity Crew", position: "Game Developer", dur: "November 2023 - Current"),
      ], options: CarouselOptions(
        height: 350,
        disableCenter: true,
        autoPlay: true,
        enlargeCenterPage: true,
       viewportFraction: 0.3,
       enlargeFactor: 0.4,
       autoPlayInterval: const Duration(seconds: 2)
      ))
    ]);
  }
}
class TabletClanView extends StatelessWidget {
  const TabletClanView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const AnimatedTextFlicker(title: "Development Clan", speed: Duration(milliseconds: 2000), pause: Duration.zero,fontSize: 70,),
      CarouselSlider(items: const [
                      ClanCard(
              imgSrc: "assets/ideekay.jpeg",
              clanName: "IDeeKay Studios",
              position: "Game Developer - Intern",
              dur: "April 2023",
            ),
            ClanCard(
              imgSrc: "assets/gokapture.jpeg",
              clanName: "GoKapture Event Technology",
              position: "Game Developer",
              dur: "April 2023 - September 2023",
            ),
            ClanCard(imgSrc: "assets/veda.jpg", clanName: "Veda Crew", position: "Game Developer", dur: "May 2023 - July 2023"),
            ClanCard(imgSrc: "assets/insanity.png", clanName: "Insanity Crew", position: "Game Developer", dur: "November 2023 - Current"),
      ], options: CarouselOptions(
        height: 350,
        disableCenter: true,
        autoPlay: true,
        enlargeCenterPage: true,
       viewportFraction: 0.45,
       enlargeFactor: 0.4,
       autoPlayInterval: const Duration(seconds: 2)
      ))
    ]);
  }
}
class MobileClanView extends StatelessWidget {
  const MobileClanView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const AnimatedTextFlicker(title: "Development Clan", speed: Duration(milliseconds: 2000), pause: Duration.zero,fontSize: 55,),
      CarouselSlider(items: const [
                      ClanCard(
              imgSrc: "assets/ideekay.jpeg",
              clanName: "IDeeKay Studios",
              position: "Game Developer - Intern",
              dur: "April 2023",
            ),
            ClanCard(
              imgSrc: "assets/gokapture.jpeg",
              clanName: "GoKapture Event Technology",
              position: "Game Developer",
              dur: "April 2023 - September 2023",
            ),
            ClanCard(imgSrc: "assets/veda.jpg", clanName: "Veda Crew", position: "Game Developer", dur: "May 2023 - July 2023"),
            ClanCard(imgSrc: "assets/insanity.png", clanName: "Insanity Crew", position: "Game Developer", dur: "November 2023 - Current"),
      ], options: CarouselOptions(
        height: 400,
        disableCenter: true,
        autoPlay: true,
        enlargeCenterPage: true,
       viewportFraction: 0.6,
       enlargeFactor: 0.4,
       autoPlayInterval: const Duration(seconds: 2)
      ))
    ]);
  }
}



class ClanCard extends StatelessWidget {
  final String imgSrc;
  final String clanName;
  final String position;
  final String dur;

  const ClanCard({
    super.key,
    required this.imgSrc,
    required this.clanName,
    required this.position,
    required this.dur,
  });

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(64),
                  child: Image.asset(imgSrc),
                ),
              ),
            ),
            Text(
              clanName,
              style: GoogleFonts.teko(color: Colors.white, fontSize: 22),
            ),
            Text(
              position,
              style: GoogleFonts.teko(color: Colors.white70, fontSize: 18),
            ),
            Text(
              dur,
              style: GoogleFonts.teko(color: Colors.white54, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}