import 'package:flutter/material.dart';
import 'package:tigerdownloader/style/style.dart';

class Snapchat extends StatefulWidget {
  const Snapchat({super.key});

  @override
  State<Snapchat> createState() => _SnapchatState();
}

class _SnapchatState extends State<Snapchat> {
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
                      'https://socialmediafetch.com/', 'Server 1')),
              Container(
                  child: contenarlink(
                      'https://www.expertstool.com/snapchat-video-downloader/',
                      'Server 2')),
              Container(
                  child: contenarlink('https://www.keepdownloading.com/snapchat-video-downloader/', 'Server 3')),
              Container(
                  child:
                      contenarlink('https://solyptube.com/snapchat-video-download', 'Server 4')),
              Container(
                  child: contenarlink(
                      'https://www.expertsphp.com/snapchat-video-downloader.html', 'Server 5')),
              Container(
                  child: contenarlink('https://viddownloader.online/snapchat-video-downloader/', 'Server 6 ')),
             
            ],
          ),
        ));
  }
}
