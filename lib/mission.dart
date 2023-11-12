import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'achievechip.dart';
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
      child: LayoutBuilder(builder: (context, constraints){
        if(constraints.maxWidth < 500){
          return const MobileMissionView();
        }
        else if(constraints.maxWidth < 900){
          return const TabletMissionView();
        }
        else{
          return const DesktopMissionView();
        }
      },),
    );
  }
}

class DesktopMissionView extends StatelessWidget {
  const DesktopMissionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const AnimatedTextFlicker(title: "Mission", speed: Duration(milliseconds: 1500), pause: Duration.zero,fontSize: 72,),
      CarouselSlider(
          items: [
            MissionSlide(
                missionName: "Triangle Rush",
                missionDesc:
                    """Ah, Triangle Rush my first crack at Unity game-making back in 2019. It's a 2D endless runner where you dodge shapes, and okay, it might not be a Play Store superstar (got the boot, by the way), but hey, we all start somewhere, right? It's like the awkward first date of my game dev adventures  a bit clunky, a few stumbles, but loads of lessons learned. Here's to Triangle Rush, the OG game that set the stage for bigger and better things!""",
                imgSrc: "assets/triangle.gif",
                achievement: [
                  AchievementChip(
                    achievementName: "Unity Novice No More",
                    achievementDesc: "Completed First inaugural Unity Game Project",
                    bgColor: Colors.red.shade400,
                  ),
                  const AchievementChip(
                    achievementName: "Lauchpad Pioneer",
                    achievementDesc: "Successfully launched first game on Play Store",
                    bgColor: Colors.red,
                  ),
                  AchievementChip(
                    achievementName: "Ad Apprentice",
                    achievementDesc: "Successfully implement first-in game ad",
                    bgColor: Colors.red.shade500,
                  ),
                  AchievementChip(
                    achievementName: "Save and Load Apprentice",
                    achievementDesc: "Successfully implement Save/Load feature",
                    bgColor: Colors.red.shade600,
                  ),
                ]),
            MissionSlide(
                missionName: "Ninja Frog",
                missionDesc:
                    "Ninja Frog, my second crack at game development in 2020, brought a hyper-casual twist to the Play Store even if it didn't stick around for long. This time, players took the leap as a nimble ninja frog, descending through platforms that were on the rise, all while dodging spikes at the top. The goal was simple jump down as fast as you could, swerving around obstacles and aiming for that high score.",
                imgSrc: "assets/ninjafrog.gif",
                achievement: [
                  AchievementChip(
                    achievementName: "Visual Enhancement Explorer",
                    achievementDesc: "Added various Post Processing Effect to enhance visual",
                    bgColor: Colors.cyan.shade400,
                  ),
                ]),
            MissionSlide(
                missionName: "Ship Out of Control",
                missionDesc:
                    "Ship Out of Control,my third creation on the Play Store in 2021. This hyper-casual delight puts players at the helm of a rotating ship, where precise taps dictate the direction. The mission is clear: collect stars against the ticking clock. Adding a competitive edge, I integrated Google Play Games Leaderboard. Amping up the fun, a basic shop system and rewarded ads.",
                imgSrc: "assets/ship.gif",
                achievement: [
                  AchievementChip(
                    achievementName: "Melody Weaver Intiate",
                    achievementDesc: "Craft inaugural game music",
                    bgColor: Colors.orange.shade400,
                  ),
                  const AchievementChip(
                    achievementName: "Shop System Starter",
                    achievementDesc: "Implemented Shop System",
                    bgColor: Colors.orange,
                  ),
                  AchievementChip(
                    achievementName: "URP Explorer",
                    achievementDesc: "Successfully Implement URP in 2D",
                    bgColor: Colors.orange.shade500,
                  ),
                  AchievementChip(
                    achievementName: "Leaderboard Savvy",
                    achievementDesc: "Succesfully Implemented Google Play Leaderboard",
                    bgColor: Colors.orange.shade500,
                  )
                ]),
            MissionSlide(
                missionName: "Dungeon Archer",
                missionDesc:
                    "Dungeon Archer, my 10-day jam submission to Juice Jam 2022 on itch.io, where the theme was 'Don't Stop.' Armed with a bow and arrow, survive endless waves of monsters in this 2D adventure. The game secured an impressive #28 in the Juice category and #56 overall, proving that even under time constraints, the thrill of precision archery and relentless survival can't be stopped.",
                imgSrc: "assets/juicejam.gif",
                achievement: [
                  AchievementChip(
                    achievementName: "Unity 2D AI Explorer",
                    achievementDesc: "Create 2D follow and attack AI",
                    bgColor: Colors.lightGreen.shade400,
                  ),
                  const AchievementChip(
                    achievementName: "Jam Initiate",
                    achievementDesc: "Participated Game Jam",
                    bgColor: Colors.lightGreen,
                  ),
                  AchievementChip(
                    achievementName: "2D Lighting Luminary",
                    achievementDesc: "Successfully Implement 2D Lights",
                    bgColor: Colors.lightGreen.shade500,
                  ),
                  AchievementChip(
                    achievementName: "Juicy Game",
                    achievementDesc: "Learn about Game Juice",
                    bgColor: Colors.lightGreen.shade600,
                  )
                ]),
            MissionSlide(
                missionName: "Operation Echo",
                missionDesc:
                    """Our UDC Game Jam #26 creation - Operation ECHO, where you play the role of a highly skilled operative on a critical mission. Crafted in collaboration with a talented team of 5 in just 10 days, this game challenges players to become elite agents, decoding and transmitting crucial coordinates to neutralize enemy targets. Navigate a unique interface of on and off switches, strategically deciphering information to plot enemy positions and coordinate strikes with your team. The result is a gripping experience that not only earned us the #2 spot in innovation but also secured an impressive #9 overall ranking.""",
                imgSrc: "assets/echo.gif",
                achievement: [
                  AchievementChip(
                    achievementName: "Creation Crew",
                    achievementDesc: "Created a Game with Team",
                    bgColor: Colors.teal.shade400,
                  ),
                  AchievementChip(
                    achievementName: "Github Savvy",
                    achievementDesc: "Use Github to collab",
                    bgColor: Colors.teal.shade400,
                  ),
                ]),
          ],
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            height: 500,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
          )),
    ]);
  }
}
class TabletMissionView extends StatelessWidget {
  const TabletMissionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const AnimatedTextFlicker(title: "Mission", speed: Duration(milliseconds: 1500), pause: Duration.zero,fontSize: 70,),
      CarouselSlider(
          items: [
            MissionSlide(
                missionName: "Triangle Rush",
                missionDesc:
                    """Ah, Triangle Rush my first crack at Unity game-making back in 2019. It's a 2D endless runner where you dodge shapes, and okay, it might not be a Play Store superstar (got the boot, by the way), but hey, we all start somewhere, right? It's like the awkward first date of my game dev adventures  a bit clunky, a few stumbles, but loads of lessons learned. Here's to Triangle Rush, the OG game that set the stage for bigger and better things!""",
                imgSrc: "assets/triangle.gif",
                achievement: [
                  AchievementChip(
                    achievementName: "Unity Novice No More",
                    achievementDesc: "Completed First inaugural Unity Game Project",
                    bgColor: Colors.red.shade400,
                  ),
                  const AchievementChip(
                    achievementName: "Lauchpad Pioneer",
                    achievementDesc: "Successfully launched first game on Play Store",
                    bgColor: Colors.red,
                  ),
                  AchievementChip(
                    achievementName: "Ad Apprentice",
                    achievementDesc: "Successfully implement first-in game ad",
                    bgColor: Colors.red.shade500,
                  ),
                  AchievementChip(
                    achievementName: "Save and Load Apprentice",
                    achievementDesc: "Successfully implement Save/Load feature",
                    bgColor: Colors.red.shade600,
                  ),
                ]),
            MissionSlide(
                missionName: "Ninja Frog",
                missionDesc:
                    "Ninja Frog, my second crack at game development in 2020, brought a hyper-casual twist to the Play Store even if it didn't stick around for long. This time, players took the leap as a nimble ninja frog, descending through platforms that were on the rise, all while dodging spikes at the top. The goal was simple jump down as fast as you could, swerving around obstacles and aiming for that high score.",
                imgSrc: "assets/ninjafrog.gif",
                achievement: [
                  AchievementChip(
                    achievementName: "Visual Enhancement Explorer",
                    achievementDesc: "Added various Post Processing Effect to enhance visual",
                    bgColor: Colors.cyan.shade400,
                  ),
                ]),
            MissionSlide(
                missionName: "Ship Out of Control",
                missionDesc:
                    "Ship Out of Control,my third creation on the Play Store in 2021. This hyper-casual delight puts players at the helm of a rotating ship, where precise taps dictate the direction. The mission is clear: collect stars against the ticking clock. Adding a competitive edge, I integrated Google Play Games Leaderboard. Amping up the fun, a basic shop system and rewarded ads.",
                imgSrc: "assets/ship.gif",
                achievement: [
                  AchievementChip(
                    achievementName: "Melody Weaver Intiate",
                    achievementDesc: "Craft inaugural game music",
                    bgColor: Colors.orange.shade400,
                  ),
                  const AchievementChip(
                    achievementName: "Shop System Starter",
                    achievementDesc: "Implemented Shop System",
                    bgColor: Colors.orange,
                  ),
                  AchievementChip(
                    achievementName: "URP Explorer",
                    achievementDesc: "Successfully Implement URP in 2D",
                    bgColor: Colors.orange.shade500,
                  ),
                  AchievementChip(
                    achievementName: "Leaderboard Savvy",
                    achievementDesc: "Succesfully Implemented Google Play Leaderboard",
                    bgColor: Colors.orange.shade500,
                  )
                ]),
            MissionSlide(
                missionName: "Dungeon Archer",
                missionDesc:
                    "Dungeon Archer, my 10-day jam submission to Juice Jam 2022 on itch.io, where the theme was 'Don't Stop.' Armed with a bow and arrow, survive endless waves of monsters in this 2D adventure. The game secured an impressive #28 in the Juice category and #56 overall, proving that even under time constraints, the thrill of precision archery and relentless survival can't be stopped.",
                imgSrc: "assets/juicejam.gif",
                achievement: [
                  AchievementChip(
                    achievementName: "Unity 2D AI Explorer",
                    achievementDesc: "Create 2D follow and attack AI",
                    bgColor: Colors.lightGreen.shade400,
                  ),
                  const AchievementChip(
                    achievementName: "Jam Initiate",
                    achievementDesc: "Participated Game Jam",
                    bgColor: Colors.lightGreen,
                  ),
                  AchievementChip(
                    achievementName: "2D Lighting Luminary",
                    achievementDesc: "Successfully Implement 2D Lights",
                    bgColor: Colors.lightGreen.shade500,
                  ),
                  AchievementChip(
                    achievementName: "Juicy Game",
                    achievementDesc: "Learn about Game Juice",
                    bgColor: Colors.lightGreen.shade600,
                  )
                ]),
            MissionSlide(
                missionName: "Operation Echo",
                missionDesc:
                    """Our UDC Game Jam #26 creation - Operation ECHO, where you play the role of a highly skilled operative on a critical mission. Crafted in collaboration with a talented team of 5 in just 10 days, this game challenges players to become elite agents, decoding and transmitting crucial coordinates to neutralize enemy targets. Navigate a unique interface of on and off switches, strategically deciphering information to plot enemy positions and coordinate strikes with your team. The result is a gripping experience that not only earned us the #2 spot in innovation but also secured an impressive #9 overall ranking.""",
                imgSrc: "assets/echo.gif",
                achievement: [
                  AchievementChip(
                    achievementName: "Creation Crew",
                    achievementDesc: "Created a Game with Team",
                    bgColor: Colors.teal.shade400,
                  ),
                  AchievementChip(
                    achievementName: "Github Savvy",
                    achievementDesc: "Use Github to collab",
                    bgColor: Colors.teal.shade400,
                  ),
                ]),
          ],
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            height: 800,
            enlargeCenterPage: true,
          )),
    ]);
  }
}
class MobileMissionView extends StatelessWidget {
  const MobileMissionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const AnimatedTextFlicker(title: "Mission", speed: Duration(milliseconds: 1500), pause: Duration.zero,fontSize: 55,),
      CarouselSlider(
          items: [
            MissionSlide(
                missionName: "Triangle Rush",
                missionDesc:
                    """Ah, Triangle Rush my first crack at Unity game-making back in 2019. It's a 2D endless runner where you dodge shapes, and okay, it might not be a Play Store superstar (got the boot, by the way), but hey, we all start somewhere, right? It's like the awkward first date of my game dev adventures  a bit clunky, a few stumbles, but loads of lessons learned. Here's to Triangle Rush, the OG game that set the stage for bigger and better things!""",
                imgSrc: "assets/triangle.gif",
                achievement: [
                  AchievementChip(
                    achievementName: "Unity Novice No More",
                    achievementDesc: "Completed First inaugural Unity Game Project",
                    bgColor: Colors.red.shade400,
                  ),
                  const AchievementChip(
                    achievementName: "Lauchpad Pioneer",
                    achievementDesc: "Successfully launched first game on Play Store",
                    bgColor: Colors.red,
                  ),
                  AchievementChip(
                    achievementName: "Ad Apprentice",
                    achievementDesc: "Successfully implement first-in game ad",
                    bgColor: Colors.red.shade500,
                  ),
                  AchievementChip(
                    achievementName: "Save and Load Apprentice",
                    achievementDesc: "Successfully implement Save/Load feature",
                    bgColor: Colors.red.shade600,
                  ),
                ]),
            MissionSlide(
                missionName: "Ninja Frog",
                missionDesc:
                    "Ninja Frog, my second crack at game development in 2020, brought a hyper-casual twist to the Play Store even if it didn't stick around for long. This time, players took the leap as a nimble ninja frog, descending through platforms that were on the rise, all while dodging spikes at the top. The goal was simple jump down as fast as you could, swerving around obstacles and aiming for that high score.",
                imgSrc: "assets/ninjafrog.gif",
                achievement: [
                  AchievementChip(
                    achievementName: "Visual Enhancement Explorer",
                    achievementDesc: "Added various Post Processing Effect to enhance visual",
                    bgColor: Colors.cyan.shade400,
                  ),
                ]),
            MissionSlide(
                missionName: "Ship Out of Control",
                missionDesc:
                    "Ship Out of Control,my third creation on the Play Store in 2021. This hyper-casual delight puts players at the helm of a rotating ship, where precise taps dictate the direction. The mission is clear: collect stars against the ticking clock. Adding a competitive edge, I integrated Google Play Games Leaderboard. Amping up the fun, a basic shop system and rewarded ads.",
                imgSrc: "assets/ship.gif",
                achievement: [
                  AchievementChip(
                    achievementName: "Melody Weaver Intiate",
                    achievementDesc: "Craft inaugural game music",
                    bgColor: Colors.orange.shade400,
                  ),
                  const AchievementChip(
                    achievementName: "Shop System Starter",
                    achievementDesc: "Implemented Shop System",
                    bgColor: Colors.orange,
                  ),
                  AchievementChip(
                    achievementName: "URP Explorer",
                    achievementDesc: "Successfully Implement URP in 2D",
                    bgColor: Colors.orange.shade500,
                  ),
                  AchievementChip(
                    achievementName: "Leaderboard Savvy",
                    achievementDesc: "Succesfully Implemented Google Play Leaderboard",
                    bgColor: Colors.orange.shade500,
                  )
                ]),
            MissionSlide(
                missionName: "Dungeon Archer",
                missionDesc:
                    "Dungeon Archer, my 10-day jam submission to Juice Jam 2022 on itch.io, where the theme was 'Don't Stop.' Armed with a bow and arrow, survive endless waves of monsters in this 2D adventure. The game secured an impressive #28 in the Juice category and #56 overall, proving that even under time constraints, the thrill of precision archery and relentless survival can't be stopped.",
                imgSrc: "assets/juicejam.gif",
                achievement: [
                  AchievementChip(
                    achievementName: "Unity 2D AI Explorer",
                    achievementDesc: "Create 2D follow and attack AI",
                    bgColor: Colors.lightGreen.shade400,
                  ),
                  const AchievementChip(
                    achievementName: "Jam Initiate",
                    achievementDesc: "Participated Game Jam",
                    bgColor: Colors.lightGreen,
                  ),
                  AchievementChip(
                    achievementName: "2D Lighting Luminary",
                    achievementDesc: "Successfully Implement 2D Lights",
                    bgColor: Colors.lightGreen.shade500,
                  ),
                  AchievementChip(
                    achievementName: "Juicy Game",
                    achievementDesc: "Learn about Game Juice",
                    bgColor: Colors.lightGreen.shade600,
                  )
                ]),
            MissionSlide(
                missionName: "Operation Echo",
                missionDesc:
                    """Our UDC Game Jam #26 creation - Operation ECHO, where you play the role of a highly skilled operative on a critical mission. Crafted in collaboration with a talented team of 5 in just 10 days, this game challenges players to become elite agents, decoding and transmitting crucial coordinates to neutralize enemy targets. Navigate a unique interface of on and off switches, strategically deciphering information to plot enemy positions and coordinate strikes with your team. The result is a gripping experience that not only earned us the #2 spot in innovation but also secured an impressive #9 overall ranking.""",
                imgSrc: "assets/echo.gif",
                achievement: [
                  AchievementChip(
                    achievementName: "Creation Crew",
                    achievementDesc: "Created a Game with Team",
                    bgColor: Colors.teal.shade400,
                  ),
                  AchievementChip(
                    achievementName: "Github Savvy",
                    achievementDesc: "Use Github to collab",
                    bgColor: Colors.teal.shade400,
                  ),
                ]),
          ],
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            height: 800,
            viewportFraction: 0.9,
            enlargeCenterPage: true,
          )),
    ]);
  }
}
