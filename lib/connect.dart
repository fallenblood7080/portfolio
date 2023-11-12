import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;


class ConnectMe extends StatelessWidget {
  const ConnectMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xFF252525),
        width: double.infinity,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if(constraints.maxWidth < 500){
              return const MobileConnectView();
            }
            else if(constraints.maxWidth < 900){
              return const TabletConnectView();
            }
            else{
              return const DesktopConnectView();
            }
          },
        ));
  }
}

class DesktopConnectView extends StatelessWidget {
  const DesktopConnectView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                child: Text(
                  "FEEL FREE TO @PING ME!!!",
                  style: GoogleFonts.teko(color: Colors.white70, fontSize: 72),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              )),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
              child: CarouselSlider(
                  items: const [
                    CustomButton(
                      imgSrc: "assets/discord.png",
                      color: Color(0xFF5865F2),
                      title: "Discord",
                      link: 'www.discord.com/users/.fallenblood',
                    ),
                    CustomButton(
                      imgSrc: "assets/x.png",
                      color: Colors.black,
                      title: "X",
                      link: 'https://twitter.com/fallenblood7080',
                    ),
                    CustomButton(
                      imgSrc: "assets/git.png",
                      color: Color(0xFF171515),
                      title: "GitHub",
                      link: 'https://github.com/fallenblood7080',
                    ),
                    CustomButton(
                      imgSrc: "assets/itch.png",
                      color: Color(0xFFfa5c5c),
                      title: "Itch.io",
                      link: 'https://fallenblood.itch.io/',
                    ),
                    CustomButton(
                      imgSrc: "assets/linkedin.png",
                      color: Color(0xFF0077B5),
                      title: "Linkedin",
                      link: 'https://www.linkedin.com/in/fallenblood/',
                    ),
                    CustomButton(
                      imgSrc: "assets/Gmail.png",
                      color: Color(0xFf151515),
                      title: "Gmail",
                      link: 'mailto:sagarkushwaha8756@gmail.com',
                    ),
                  ],
                  options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 5),
                      scrollDirection: Axis.vertical,
                      enlargeCenterPage: true,
                      height: 300,
                      viewportFraction: 0.3)),
            ),
          ),
        ]);
  }
}

class TabletConnectView extends StatelessWidget {
  const TabletConnectView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                child: Text(
                  "FEEL FREE TO @PING ME!!!",
                  style: GoogleFonts.teko(color: Colors.white70, fontSize: 60),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              )),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
              child: CarouselSlider(
                  items: const [
                    CustomButton(
                      imgSrc: "assets/discord.png",
                      color: Color(0xFF5865F2),
                      title: "Discord",
                      link: 'www.discord.com/users/.fallenblood',
                    ),
                    CustomButton(
                      imgSrc: "assets/x.png",
                      color: Colors.black,
                      title: "X",
                      link: 'https://twitter.com/fallenblood7080',
                    ),
                    CustomButton(
                      imgSrc: "assets/git.png",
                      color: Color(0xFF171515),
                      title: "GitHub",
                      link: 'https://github.com/fallenblood7080',
                    ),
                    CustomButton(
                      imgSrc: "assets/itch.png",
                      color: Color(0xFFfa5c5c),
                      title: "Itch.io",
                      link: 'https://fallenblood.itch.io/',
                    ),
                    CustomButton(
                      imgSrc: "assets/linkedin.png",
                      color: Color(0xFF0077B5),
                      title: "Linkedin",
                      link: 'https://www.linkedin.com/in/fallenblood/',
                    ),
                    CustomButton(
                      imgSrc: "assets/Gmail.png",
                      color: Color(0xFf151515),
                      title: "Gmail",
                      link: 'mailto:sagarkushwaha8756@gmail.com',
                    ),
                  ],
                  options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 5),
                      scrollDirection: Axis.vertical,
                      enlargeCenterPage: true,
                      height: 300,
                      viewportFraction: 0.3)),
            ),
          ),
        ]);
  }
}

class MobileConnectView extends StatelessWidget {
  const MobileConnectView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                child: Text(
                  "FEEL FREE TO @PING ME!!!",
                  style: GoogleFonts.teko(color: Colors.white70, fontSize: 50),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              )),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
              child: CarouselSlider(
                  items: const [
                    CustomButton(
                      imgSrc: "assets/discord.png",
                      color: Color(0xFF5865F2),
                      title: "Discord",
                      link: 'www.discord.com/users/.fallenblood',
                    ),
                    CustomButton(
                      imgSrc: "assets/x.png",
                      color: Colors.black,
                      title: "X",
                      link: 'https://twitter.com/fallenblood7080',
                    ),
                    CustomButton(
                      imgSrc: "assets/git.png",
                      color: Color(0xFF171515),
                      title: "GitHub",
                      link: 'https://github.com/fallenblood7080',
                    ),
                    CustomButton(
                      imgSrc: "assets/itch.png",
                      color: Color(0xFFfa5c5c),
                      title: "Itch.io",
                      link: 'https://fallenblood.itch.io/',
                    ),
                    CustomButton(
                      imgSrc: "assets/linkedin.png",
                      color: Color(0xFF0077B5),
                      title: "Linkedin",
                      link: 'https://www.linkedin.com/in/fallenblood/',
                    ),
                    CustomButton(
                      imgSrc: "assets/Gmail.png",
                      color: Color(0xFf151515),
                      title: "Gmail",
                      link: 'mailto:sagarkushwaha8756@gmail.com',
                    ),
                  ],
                  options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 5),
                      scrollDirection: Axis.vertical,
                      enlargeCenterPage: true,
                      height: 300,
                      viewportFraction: 0.3)),
            ),
          ),
        ]);
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final String imgSrc;
  final Color color;
  final String link;

  const CustomButton({super.key, required this.imgSrc, required this.color, required this.title, required this.link});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.open(link, 'new tab');
      },
      child: Container(
        height: 60,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Flexible(
              child: Image.asset(
            imgSrc,
          )),
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: GoogleFonts.teko(fontSize: 28, color: Colors.white),
          )
        ]),
      ),
    );
  }
}
