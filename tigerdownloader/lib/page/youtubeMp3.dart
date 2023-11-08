import 'package:flutter/material.dart';
import 'package:tigerdownloader/style/style.dart';

class YoutubeMp3 extends StatefulWidget {
  const YoutubeMp3({super.key});

  @override
  State<YoutubeMp3> createState() => _YoutubeMp3State();
}

class _YoutubeMp3State extends State<YoutubeMp3> {
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
                      'https://yt1s.ltd/en186op/youtube-to-mp3', 'Server 1')),
              Container(
                  child: contenarlink(
                      'https://x2download.app/en126/download-youtube-to-mp3',
                      'Server 2')),
              Container(
                  child: contenarlink('https://ytmp3.nu/DyzH/', 'Server 3')),
              Container(
                  child:
                      contenarlink('https://en.onlymp3.to/nG2q/', 'Server 4')),
              Container(
                  child: contenarlink(
                      'https://getv.topsandtees.space/YMpNanr6bl', 'Server 5')),
              Container(
                  child: contenarlink('https://v2.y2mate.bz/', 'Server 6 ')),
              Container(
                  child: contenarlink('https://y2bs.com/en17/', 'Server 7 ')),
              Container(
                  child: contenarlink(
                      'https://en2.onlinevideoconverter.pro/200Uq/youtube-converter-mp3',
                      'Server 8 '))
            ],
          ),
        ));
  }
}
