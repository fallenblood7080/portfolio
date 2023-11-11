import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'animated_text_flicker.dart';

class YTShowcase extends StatelessWidget {
  const YTShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF252525),
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const AnimatedTextFlicker(title: "Youtube", speed: Duration(milliseconds: 1500), pause: Duration.zero),
        CarouselSlider(
            items: const [
              YT(id: '69m3fmOr-0U'),
              ],
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              height: 400,
              enlargeCenterPage: true,
              viewportFraction: 0.5,
            )),
      ]),
    );
  }
}

class YT extends StatefulWidget {
  final String id;
  const YT({super.key, required this.id});

  @override
  State<YT> createState() => _YTState();
}

class _YTState extends State<YT> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController.fromVideoId(
      videoId: widget.id,
      autoPlay: false,
      params: const YoutubePlayerParams(showFullscreenButton: true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
    );
  }
}
