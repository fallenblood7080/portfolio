import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'achievechip.dart';

class MissionSlide extends StatelessWidget {
  final String missionName;
  final String missionDesc;
  final String imgSrc;
  final List<AchievementChip> achievement;

  const MissionSlide({
    super.key,
    required this.missionName,
    required this.missionDesc,
    required this.imgSrc,
    required this.achievement,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF151515),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth < 500) {
                  return MobileMissionSlideView(imgSrc: imgSrc, missionName: missionName, missionDesc: missionDesc, achievement: achievement);
                } else if (constraints.maxWidth < 900) {
                  return TabletMissionSlideView(imgSrc: imgSrc, missionName: missionName, missionDesc: missionDesc, achievement: achievement);
                } else {
                  return DesktopMissionSlideView(imgSrc: imgSrc, missionName: missionName, missionDesc: missionDesc, achievement: achievement);
                }
              },
            )));
  }
}

class DesktopMissionSlideView extends StatelessWidget {
  const DesktopMissionSlideView({
    super.key,
    required this.imgSrc,
    required this.missionName,
    required this.missionDesc,
    required this.achievement,
  });

  final String imgSrc;
  final String missionName;
  final String missionDesc;
  final List<AchievementChip> achievement;

  @override
  Widget build(BuildContext context) {
    return Flex(
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
              child: Image.asset(imgSrc),
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
                missionName,
                style: GoogleFonts.teko(fontSize: 30, color: Colors.white),
              ),
              Flexible(
                child: Text(
                  missionDesc,
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
              Wrap(
                children: achievement,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class TabletMissionSlideView extends StatelessWidget {
  const TabletMissionSlideView({
    super.key,
    required this.imgSrc,
    required this.missionName,
    required this.missionDesc,
    required this.achievement,
  });

  final String imgSrc;
  final String missionName;
  final String missionDesc;
  final List<AchievementChip> achievement;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(imgSrc),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                missionName,
                style: GoogleFonts.teko(fontSize: 30, color: Colors.white),
              ),
              Flexible(
                child: Text(
                  missionDesc,
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
              Wrap(
                children: achievement,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MobileMissionSlideView extends StatelessWidget {
  const MobileMissionSlideView({
    super.key,
    required this.imgSrc,
    required this.missionName,
    required this.missionDesc,
    required this.achievement,
  });

  final String imgSrc;
  final String missionName;
  final String missionDesc;
  final List<AchievementChip> achievement;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(imgSrc),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                missionName,
                style: GoogleFonts.teko(fontSize: 24, color: Colors.white),
              ),
              Flexible(
                child: Text(
                  missionDesc,
                  style: GoogleFonts.teko(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                  softWrap: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: Text(
                  'Achievement',
                  style: GoogleFonts.teko(color: Colors.white, fontSize: 20),
                ),
              ),
              Wrap(
                children: achievement,
              ),
            ],
          ),
        )
      ],
    );
  }
}
