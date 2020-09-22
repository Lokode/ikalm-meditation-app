import 'package:flutter/material.dart';
import 'dart:math';

class DeepakRandomQuotes extends StatefulWidget {
  DeepakRandomQuotes({Key key}) : super(key: key);

  @override
  _DeepakRandomQuotesState createState() => _DeepakRandomQuotesState();
}

class _DeepakRandomQuotesState extends State<DeepakRandomQuotes> {
  static List randomquotes = [
    '"If you try to get rid of fear and anger without knowing their meaning, they will grow stronger and return."',
    '“Meditation makes the entire nervous system go into a field of coherence.”',
    '"The highest levels of performance come to people who are centered, intuitive, creative, and reflective – people who know to see a problem as an opportunity."',
    '"Every time you are tempted to react in the same old way, ask if you want to be a prisoner of the past or a pioneer of the future."',
    '“If you focus on success, you’ll have stress. But if you pursue excellence, success will be guaranteed.”',
    '“Don’t try to steer the river.”',
    '“I was very afraid at the beginning, until Master told me that pain isn’t the truth; it’s what you have to get through in order to find the truth”',
    '“Walk with those seeking truth… Run from those who think they’ve found it.”',
    '“In a person’s career, well, if you’re process-oriented and not totally outcome-oriented, then you’re more likely to be a success. I often say ‘pursue excellence, ignore success.’ Success is a by-product of excellence.”',
    '“Even when you think you have your life all mapped out, things happen that shape your destiny in ways you might never have imagined.”',
    '“There is just no getting around that turning bad things into good things is up to you.”',
    '“You can’t make positive choices for the rest of your life without an environment that makes those choices easy, natural, and enjoyable.”',
    '“Always go with your passions. Never ask yourself if it’s realistic or not.”',
    '“You alone are the judge of your worth and your goal is to discover infinite worth in yourself, no matter what anyone else thinks.”',
    '“When you struggle with your partner, you are struggling with yourself. Every fault you see in them touches a denied weakness in yourself.”',
    '“Everyone is acting from his own level of consciousness.  This is all we can ask of ourselves or anyone else. However hurtful someone is, he is doing the best he can, given the limits of his consciousness.”',
    '“The real key is to live in an environment where the mind feels free to choose the right thing instead of being compelled by habit and inertia to choose the wrong thing.”',
    '"No solution can ever be found by running in three different directions.”',
    '"If you and I are having a single thought of violence or hatred against anyone in the world at this moment, we are contributing to the wounding of the world.”',
    '“Wealth is the progressive realization of worthy goals, the ability to love and have compassion, meaningful and caring relationships.”',
    '“The less you open your heart to others, the more your heart suffers.”',
    '“You must find the place inside yourself where nothing is impossible.”',
    '“Success comes when people act together; failure tends to happen alone.”',
    '“There are no extra pieces in the universe.  Everyone is here because he or she has a place to fill, every piece must fit itself into the big jigsaw puzzle.”',
    '"In the midst of movement and chaos, keep stillness inside of you.”',
    '“The way you think, the way you behave, the way you eat, can influence your life by 30 to 50 years.”',
  ];

  Random random = new Random();
  var shuffleList = randomquotes.toList()..shuffle();
  int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(shuffleList.length));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(bottom: 5, top: 5, left: 20, right: 20),
            child: Text(
              shuffleList[index].toString(),
              style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Roboto-boldItalics',
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                '- Deepak chopra'.toUpperCase(),
                style: TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Roboto',
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              const Divider(
                color: Colors.black26,
                height: 2,
                thickness: 1,
                indent: 50,
                endIndent: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
