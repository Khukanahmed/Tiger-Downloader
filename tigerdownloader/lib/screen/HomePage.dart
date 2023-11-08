import 'dart:io';

import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:tigerdownloader/page/Facebook.dart';
import 'package:tigerdownloader/page/Reels.dart';
import 'package:tigerdownloader/page/Snapchat.dart';
import 'package:tigerdownloader/page/Youtube.dart';
import 'package:tigerdownloader/page/youtubeMp3.dart';
import 'package:tigerdownloader/style/style.dart';
//import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../page/Intragram.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final Vediourl = 'https://youtu.be/eIrRj6vDddU?si=MKJLRQ9qsxy-InFY';
  // late YoutubePlayerController _controller;
  late CustomVideoPlayerController _customVideoPlayerController;

  String assetvideopath =
      "Asset/video/Tutiral.mp4";
  static final AdRequest request = AdRequest(
    keywords: <String>['foo', 'bar'],
    contentUrl: 'http://foo.com/bar.html',
    nonPersonalizedAds: true,
  );

  InterstitialAd? _interstitialAd;
  int _numInterstitialLoadAttempts = 0;
  int maxFailedLoadAttempts = 3;
  void _createInterstitialAd() {
    InterstitialAd.load(
        adUnitId: Platform.isAndroid
            ? 'ca-app-pub-2602554911401594/9724554618'
            : 'ca-app-pub-2602554911401594/3162219539',
        request: request,
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            print('$ad loaded');
            _interstitialAd = ad;
            _numInterstitialLoadAttempts = 0;
            _interstitialAd!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error.');
            _numInterstitialLoadAttempts += 1;
            _interstitialAd = null;
            if (_numInterstitialLoadAttempts < maxFailedLoadAttempts) {
              _createInterstitialAd();
            }
          },
        ));
  }

  void _showInterstitialAd() {
    if (_interstitialAd == null) {
      print('Warning: attempt to show interstitial before loaded.');
      return;
    }
    _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) =>
          print('ad onAdShowedFullScreenContent.'),
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        print('$ad onAdDismissedFullScreenContent.');
        ad.dispose();
        _createInterstitialAd();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        print('$ad onAdFailedToShowFullScreenContent: $error');
        ad.dispose();
        _createInterstitialAd();
      },
    );
    _interstitialAd!.show();
    _interstitialAd = null;
  }

  @override
  void initState() {
    super.initState();
    //  myBanner.load();
    _createInterstitialAd();

    InitializeVideoPlayer();
    // final VedioID = YoutubePlayer.convertUrlToId(Vediourl);

    // _controller = YoutubePlayerController(
    //     initialVideoId: VedioID!,
    //     flags: const YoutubePlayerFlags(autoPlay: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Downloader All Site',
          style: Head10(),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            _showInterstitialAd();
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Facebook();
                            }));
                          },
                          child: Container(
                            height: 100,
                            width: 90,
                            decoration: Appcontian(),
                            child: Image.asset('Asset/Facebook_Logo.png'),
                          ),
                        ),
                        SizedBox(height: 8),
                        Undertext('Facebook Vedio')
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            _showInterstitialAd();
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const FacebookReels();
                            }));
                          },
                          child: Container(
                            height: 100,
                            width: 90,
                            decoration: Appcontian(),
                            child: Image.asset('Asset/reels-design.png'),
                          ),
                        ),
                        SizedBox(height: 8),
                        Undertext('Facebook Reels')
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            _showInterstitialAd();
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Youtube();
                            }));
                          },
                          child: Container(
                            height: 100,
                            width: 90,
                            decoration: Appcontian(),
                            child: Image.asset('Asset/youtube.png'),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Undertext('YouTube Vedio'),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          child: InkWell(
                            onTap: () {
                              _showInterstitialAd();
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const YoutubeMp3();
                              }));
                            },
                            child: Container(
                              height: 100,
                              width: 90,
                              decoration: Appcontian(),
                              child: Image.asset('Asset/youtubemp3.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Undertext('YouTube MP3'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            _showInterstitialAd();
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Intragram();
                            }));
                          },
                          child: Container(
                            height: 100,
                            width: 90,
                            decoration: Appcontian(),
                            child: Image.asset('Asset/intragram.png'),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Undertext('Intragram Vedio'),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            _showInterstitialAd();
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Snapchat();
                            }));
                          },
                          child: Container(
                            height: 100,
                            width: 90,
                            decoration: Appcontian(),
                            child: Image.asset('Asset/snapchat-seeklogo 1.png'),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Undertext('Snapchat Vedio'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  'Tutorial Video ',
                  style: Head10(),
                ),
              ),
              Expanded(
                  child: Container(
                    child: CustomVideoPlayer(
                        customVideoPlayerController: _customVideoPlayerController),
                  )
                  //
                  //
                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: Container(
                  //       height: 100,
                  //       width: double.infinity,
                  //       decoration: Appcontian(),
                  //       child: YoutubePlayer(
                  //         controller: _controller,
                  //         showVideoProgressIndicator: false,
                  //       )),
                  // ),
                  ),
            ],
          ),
        ),
      ),
    );
  }

  void InitializeVideoPlayer() {
    VideoPlayerController _videoPlayerController;
    _videoPlayerController = VideoPlayerController.asset(assetvideopath)
      ..initialize().then((value) {
        setState(() {});
      });
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}
