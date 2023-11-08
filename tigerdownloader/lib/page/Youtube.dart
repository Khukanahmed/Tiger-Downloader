import 'package:flutter/material.dart';
import 'package:tigerdownloader/style/style.dart';

class Youtube extends StatefulWidget {
  const Youtube({super.key});

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
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
              Container(
                  child: contenarlink(
                      'https://en.savefrom.net/1-youtube-video-downloader-533nN/',
                      'Server 1')),
              Container(
                  child: contenarlink(
                      'https://ssyoutube.com/en734uQ/', 'Server 2')),
              Container(
                  child: contenarlink('https://yt1s.ltd/en182o1/', 'Server 3')),
              Container(
                  child: contenarlink(
                      'https://en2.onlinevideoconverter.pro/153fJ/youtube-video-downloader',
                      'Server 4')),
              Container(
                  child: contenarlink('https://yt5s.io/en91', 'Server 5')),
              Container(
                  child: contenarlink(
                      'https://givefastlink.com/allvideob/', 'Server 6 ')),
              Container(
                  child: contenarlink('https://x2mate.com/en76', 'Server 7 '))
            ],
          ),
        ));
  }
}
