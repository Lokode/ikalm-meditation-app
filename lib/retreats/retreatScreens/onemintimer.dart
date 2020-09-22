import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'dart:math' as math;

void main() => runApp(OmmTheme());

class OmmTheme extends StatefulWidget {
  @override
  _OmmThemeState createState() => _OmmThemeState();
}

class _OmmThemeState extends State<OmmTheme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OneMinMeditation(),
      theme: ThemeData(
        canvasColor: Color(0xFF0C0E13),
        iconTheme: IconThemeData(
          color: Color(0xFF9EFCF1),
        ),
        accentColor: Color(0xFF2a9d8f),
        brightness: Brightness.dark,
      ),
    );
  }
}

class OneMinMeditation extends StatefulWidget {
  @override
  OneMinMeditationState createState() => OneMinMeditationState();
}

class OneMinMeditationState extends State<OneMinMeditation>
    with TickerProviderStateMixin {
  AudioCache _audioCache;
  AudioPlayer _audioPlayer = AudioPlayer();
  AnimationController controller;
  bool _visible = true;
  bool isPlaying = false;
  String get timerString {
    Duration duration = controller.duration * controller.value;
    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }
 

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 60),
    );
    _audioCache = AudioCache(
        prefix: "audio/",
        fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Align(
                alignment: FractionalOffset.center,
                child: AspectRatio(
                  aspectRatio: 1.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: AnimatedBuilder(
                          animation: controller,
                          builder: (BuildContext context, Widget child) {
                            return new CustomPaint(
                                painter: TimerPainter(
                              animation: controller,
                              backgroundColor: Color(0xFF272C38),
                              color: themeData.indicatorColor,
                            ));
                          },
                        ),
                      ),
                      Align(
                        alignment: FractionalOffset.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            AnimatedBuilder(
                                animation: controller,
                                builder: (BuildContext context, Widget child) {
                                  return new Text(
                                    timerString,
                                    style: themeData.textTheme.display3,
                                  );
                                }),
                            // Text(
                            //   "One minuite Meditation",
                            //   style:  TextStyle(
                            //          color: Color(0xFF363D4B),
                            //           fontFamily: 'Roboto',
                            //           fontSize: 18.0,
                            //         ),

                            // ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FloatingActionButton(
                      child: AnimatedBuilder(
                        animation: controller,
                        builder: (BuildContext context, Widget child) {
                          return new Icon(controller.isAnimating
                              ? Icons.pause
                              : Icons.play_arrow);
                        },
                      ),
                      onPressed: () {
                        if (controller.isAnimating)
                          controller.stop();
                          
                        else {
                          
                          controller.reverse(
                              from: controller.value == 0.0
                                  ? 1.0
                                  : controller.value);
                          setState(() => isPlaying == !isPlaying);
                          _audioCache.play('30sec.mp3');
                        }
                        setState(() {
                          _visible = !_visible;
                        });
                      },
                    ),
                  ],
                )),
            Container(
              child: Text(
                "1-minuite Meditation",
                style: TextStyle(
                  color: Color(0xFF363D4B),
                  fontFamily: 'Roboto',
                  fontSize: 18.0,
                ),
              ),
            ),
            AnimatedOpacity(
              // If the widget is visible, animate to 0.0 (invisible).
              // If the widget is hidden, animate to 1.0 (fully visible).
              opacity: _visible ? 0.0 : 1.0,
              duration: Duration(milliseconds: 500),
            )
          ],
        ),
      ),
    );
  }
}

//below draws a circle and another circle animation above it
class TimerPainter extends CustomPainter {
  TimerPainter({
    this.animation,
    this.backgroundColor,
    this.color,
  }) : super(repaint: animation);

  final Animation<double> animation;
  final Color backgroundColor, color;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..strokeWidth = 10.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(size.center(Offset.zero), size.width / 2.0, paint);
    paint.color = color;
    double progress = (1.0 - animation.value) * 2 * math.pi;
    canvas.drawArc(Offset.zero & size, math.pi * 1.5, -progress, false, paint);
  }

  @override
  bool shouldRepaint(TimerPainter old) {
    return animation.value != old.animation.value ||
        color != old.color ||
        backgroundColor != old.backgroundColor;
  }
}
