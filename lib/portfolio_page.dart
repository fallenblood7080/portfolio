import 'package:flutter/material.dart';
import 'connect.dart';
import 'skill.dart';
import 'clan.dart';
import 'mission.dart';
import 'prologue.dart';
import 'profile.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(width: double.infinity, child: Center(child: Image.asset("assets/title.gif"))),
            const Profile(),
            const Prologue(),
            const Clan(),
            const Mission(),
            const Skills(),
            const ConnectMe()
          ],
        ),
      ),
    );
  }
}
