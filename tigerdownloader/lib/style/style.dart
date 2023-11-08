import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

BoxDecoration Appcontian() {
  return BoxDecoration(
    color: Color(0xffD9D9D9),
    borderRadius: BorderRadius.all(Radius.circular(20)),
  );
}

TextStyle Head10() {
  return TextStyle(
      fontFamily: 'Inika', fontSize: 20, fontWeight: FontWeight.bold);
}

TextStyle Head5() {
  return TextStyle(
    fontFamily: 'Inika',
    fontSize: 15,
  );
}

Text Undertext(text) {
  return Text(
    text,
    style: TextStyle(fontSize: 18, fontFamily: 'Inika'),
  );
}

// final Vediourl = 'https://youtu.be/eIrRj6vDddU?si=MKJLRQ9qsxy-InFY';
// late YoutubePlayerController _controller;

// @override
// void initState() {
//   final VedioID = YoutubePlayer.convertUrlToId(Vediourl);

//   _controller = YoutubePlayerController(
//       initialVideoId: VedioID!,
//       flags: const YoutubePlayerFlags(autoPlay: false));

//   super.initState();
// }
Link contenarlink(URL, Name) {
  return Link(
      target: LinkTarget.blank,
      uri: Uri.parse(URL),
      builder: (context, followLink) => TextButton(
          onPressed: followLink,
          child: Center(
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Center(
                child: Text(
                  Name,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Inika',
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          )));
}
