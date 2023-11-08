import 'package:flutter/material.dart';
import 'package:tigerdownloader/style/style.dart';

class Intragram extends StatefulWidget {
  const Intragram({super.key});

  @override
  State<Intragram> createState() => _IntragramState();
}

class _IntragramState extends State<Intragram> {
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
                  child: contenarlink('https://saveinsta.app/en1', 'Server 1')),
              Container(
                  child: contenarlink('https://snapinsta.app/', 'Server 2')),
              Container(child: contenarlink('https://fastdl.app/', 'Server 3')),
              Container(
                  child: contenarlink('https://igram.world/', 'Server 4')),
              Container(
                  child: contenarlink(
                      'https://inflact.com/downloader/instagram/video/',
                      'Server 5')),
              Container(
                  child: contenarlink(
                      'https://sssinstagram.com/video-downloader',
                      'Server 6 ')),
            ],
          ),
        ));
  }
}
