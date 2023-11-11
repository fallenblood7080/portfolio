import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AchievementChip extends StatelessWidget {

  final String achievementName;
  final String achievementDesc;
  final Color bgColor;

  const AchievementChip({
    super.key, required this.achievementName, required this.achievementDesc, required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {},
          onHover: (isHover) {
            if (isHover) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  achievementDesc,
                  style: GoogleFonts.teko(color: Colors.white,fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                backgroundColor: const Color(0xFF303030),
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                width: MediaQuery.of(context).size.width/2,
                behavior: SnackBarBehavior.floating,
              ));
            } else {
              ScaffoldMessenger.of(context).clearSnackBars();
            }
          },
          child: Chip(
            label: Text(
              achievementName,
              style: GoogleFonts.teko(color: Colors.white, fontSize: 18),
            ),
            backgroundColor: bgColor,
            elevation: 5,
            padding: const EdgeInsets.all(4),
            avatar: Icon(
              MdiIcons.trophyVariant,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}