import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'achievechip.dart';

class TriangleRush extends StatelessWidget {
  const TriangleRush({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Container(
          width: MediaQuery.of(context).size.width - 500,
          decoration: BoxDecoration(color: const Color(0xFF151515), borderRadius: BorderRadius.circular(16)),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset("assets/triangle.gif"),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Triangle Rush",
                      style: GoogleFonts.teko(fontSize: 30, color: Colors.white),
                    ),
                    Flexible(
                      child: Text(
                        "Ah, Triangle Rush my first crack at Unity game-making back in 2019. It's a 2D endless runner where you dodge shapes, and okay, it might not be a Play Store superstar (got the boot, by the way), but hey, we all start somewhere, right? It's like the awkward first date of my game dev adventures  a bit clunky, a few stumbles, but loads of lessons learned. Here's to Triangle Rush, the OG game that set the stage for bigger and better things!",
                        style: GoogleFonts.teko(
                          color: Colors.white70,
                          fontSize: 20,
                        ),
                        softWrap: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                      child: Text(
                        'Achievement',
                        style: GoogleFonts.teko(color: Colors.white, fontSize: 24),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
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
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class NinjaFrog extends StatelessWidget {
  const NinjaFrog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Container(
          width: MediaQuery.of(context).size.width - 500,
          decoration: BoxDecoration(color: const Color(0xFF151515), borderRadius: BorderRadius.circular(16)),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset("assets/ninjafrog.gif"),
                ),
              ),
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ninja Frog",
                      style: GoogleFonts.teko(fontSize: 30, color: Colors.white),
                    ),
                    Flexible(
                      child: Text(
                        "Ninja Frog, my second crack at game development in 2020, brought a hyper-casual twist to the Play Store even if it didn't stick around for long. This time, players took the leap as a nimble ninja frog, descending through platforms that were on the rise, all while dodging spikes at the top. The goal was simple jump down as fast as you could, swerving around obstacles and aiming for that high score.",
                        style: GoogleFonts.teko(
                          color: Colors.white70,
                          fontSize: 20,
                        ),
                        softWrap: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                      child: Text(
                        'Achievement',
                        style: GoogleFonts.teko(color: Colors.white, fontSize: 24),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AchievementChip(
                          achievementName: "Visual Enhancement Explorer",
                          achievementDesc: "Added various Post Processing Effect to enhance visual",
                          bgColor: Colors.cyan.shade400,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class ShipOutofControl extends StatelessWidget {
  const ShipOutofControl({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Container(
          width: MediaQuery.of(context).size.width - 500,
          decoration: BoxDecoration(color: const Color(0xFF151515), borderRadius: BorderRadius.circular(16)),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset("assets/ship.gif"),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ship Out of Control",
                      style: GoogleFonts.teko(fontSize: 30, color: Colors.white),
                    ),
                    Flexible(
                      child: Text(
                        "Ship Out of Control,my third creation on the Play Store in 2021. This hyper-casual delight puts players at the helm of a rotating ship, where precise taps dictate the direction. The mission is clear: collect stars against the ticking clock. Adding a competitive edge, I integrated Google Play Games Leaderboard. Amping up the fun, a basic shop system and rewarded ads.",
                        style: GoogleFonts.teko(
                          color: Colors.white70,
                          fontSize: 20,
                        ),
                        softWrap: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                      child: Text(
                        'Achievement',
                        style: GoogleFonts.teko(color: Colors.white, fontSize: 24),
                      ),
                    ),
                    Row(
                      children: [
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
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class DungeonArcher extends StatelessWidget {
  const DungeonArcher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Container(
          width: MediaQuery.of(context).size.width - 500,
          decoration: BoxDecoration(
            color: const Color(0xFF151515),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset("assets/juicejam.gif"),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dungeon Archer",
                      style: GoogleFonts.teko(fontSize: 30, color: Colors.white),
                    ),
                    Flexible(
                      child: Text(
                        "Dungeon Archer, my 10-day jam submission to Juice Jam 2022 on itch.io, where the theme was 'Don't Stop.' Armed with a bow and arrow, survive endless waves of monsters in this 2D adventure. The game secured an impressive #28 in the Juice category and #56 overall, proving that even under time constraints, the thrill of precision archery and relentless survival can't be stopped.",
                        style: GoogleFonts.teko(
                          color: Colors.white70,
                          fontSize: 20,
                        ),
                        softWrap: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                      child: Text(
                        'Achievement',
                        style: GoogleFonts.teko(color: Colors.white, fontSize: 24),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
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
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class OperationEcho extends StatelessWidget {
  const OperationEcho({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Container(
          width: MediaQuery.of(context).size.width - 500,
          decoration: BoxDecoration(
            color: const Color(0xFF151515),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset("assets/echo.gif"),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Operation Echo",
                      style: GoogleFonts.teko(fontSize: 30, color: Colors.white),
                    ),
                    Flexible(
                      child: Text(
                        """Our UDC Game Jam #26 creation - Operation ECHO, where you play the role of a highly skilled operative on a critical mission. Crafted in collaboration with a talented team of 5 in just 10 days, this game challenges players to become elite agents, decoding and transmitting crucial coordinates to neutralize enemy targets. Navigate a unique interface of on and off switches, strategically deciphering information to plot enemy positions and coordinate strikes with your team. The result is a gripping experience that not only earned us the #2 spot in innovation but also secured an impressive #9 overall ranking.""",
                        style: GoogleFonts.teko(
                          color: Colors.white70,
                          fontSize: 20,
                        ),
                        softWrap: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                      child: Text(
                        'Achievement',
                        style: GoogleFonts.teko(color: Colors.white, fontSize: 24),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
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
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
