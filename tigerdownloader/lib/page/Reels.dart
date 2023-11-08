import 'package:flutter/material.dart';
import 'package:tigerdownloader/style/style.dart';

class FacebookReels extends StatefulWidget {
  const FacebookReels({super.key});

  @override
  State<FacebookReels> createState() => _FacebookReelsState();
}

class _FacebookReelsState extends State<FacebookReels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            ' All Server',
            style: Head10(),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(child: contenarlink('https://fdownloader.net/en/facebook-reels-downloader', 'Server 1')),
              Container(
                  child: contenarlink('https://fbdownloader.app/en/download-reels-video-from-facebook', 'Server 2')),
              Container(
                  child:
                      contenarlink('https://instavideosave.net/facebook', 'Server 3')),
              Container(
                  child: contenarlink('https://www.duplichecker.com/facebook-reels-downloader.php', 'Server 4')),
              Container(
                  child: contenarlink(
                      'https://download.solutionexist.com/facebook-reels-downloader/',
                      'Server 5')),
              Container(
                  child: contenarlink(
                      'https://likeedownloader.com/facebook-video-downloader',
                      'Server 6  Likee'))
            ],
          ),
        ));
  }
}
