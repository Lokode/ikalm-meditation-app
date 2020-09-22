import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class AlanYT extends StatefulWidget {
  const AlanYT({Key key}) : super(key: key);

  @override
  _AlanYTState createState() => _AlanYTState();
}

class _AlanYTState extends State<AlanYT> {
  @override
  Widget build(BuildContext context) {
  String alansvideo = 'https://www.youtube.com/watch?v=dSmWyT0Sa04';

  YoutubePlayerController _controller;

  @override
  void initState() { 
     _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(alansvideo));
       super.initState();

  }
    return Column(
      children: <Widget>[
        YoutubePlayer(controller: _controller)
      ],
    );
    
//     return Padding(
//       padding: const EdgeInsets.all(50.0),
//       child: FittedBox(
//         fit: BoxFit.fill,
//               child: Container(
//           child: 
          
//           FlutterYoutube.playYoutubeVideoByUrl(
//   apiKey: "AIzaSyCbIIYfn8gO2MsEJxQNEXo4dutiOFLzmPA",
//   videoUrl: "https://www.youtube.com/watch?v=dSmWyT0Sa04",
//   autoPlay: false, //default falase
//   fullScreen: false, //default false
//   appBarColor: Colors.transparent,


// ),



//         ),
//       ),
//     );

  }
}
