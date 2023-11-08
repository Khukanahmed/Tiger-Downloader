import 'package:flutter/material.dart';
import 'package:tigerdownloader/style/style.dart';

class Facebook extends StatefulWidget {
  const Facebook({super.key});

  @override
  State<Facebook> createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
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
              Container(child: contenarlink('https://fdown.net/', 'Server 1')),
              Container(
                  child: contenarlink('https://snapsave.app/', 'Server 2')),
              Container(
                  child:
                      contenarlink('https://fdownloader.net/en', 'Server 3')),
              Container(
                  child: contenarlink('https://savefb.app/en', 'Server 4')),
              Container(
                  child: contenarlink(
                      'https://en.savefrom.net/9-how-to-download-facebook-video-217.html',
                      'Server 5')),
              Container(
                  child: contenarlink(
                      'https://smallseotools.com/facebook-video-downloader/',
                      'Server 6'))
            ],
          ),
        ));
  }
}
