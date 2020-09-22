import 'package:flutter/material.dart';
import 'dart:math';

class EckhartRandomQuotes extends StatefulWidget {
  EckhartRandomQuotes({Key key}) : super(key: key);

  @override
  _EckhartRandomQuotesState createState() => _EckhartRandomQuotesState();
}

class _EckhartRandomQuotesState extends State<EckhartRandomQuotes> {
  static List randomquotes = [
    '“The primary cause of unhappiness is never the situation but your thoughts about it.”',
    '“Some changes look negative on the surface but you will soon realize that space is being created in your life for something new to emerge.”',
    '"The primary cause of unhappiness is never the situation but your thoughts about it.”',
    '"Acknowledging the good that you already have in your life is the foundation for all abundance"',
    '“Life will give you whatever experience is most helpful for the evolution of your consciousness. How do you know this is the experience you need? Because this is the experience you are having at the moment.”',
    '“Realize deeply that the present moment is all you have. Make the NOW the primary focus of your life.”',
    '“To love is to recognize yourself in another.”',
    '“Life isn\'t as serious as the mind makes it out to be.”',
    '“Life is the dancer and you are the dance.”',
    '“Whatever the present moment contains, accept it as if you had chosen it.”',
    '“Anything that you resent and strongly react to in another is also in you.”',
    '“You can only lose something that you have, but you cannot lose something that you are.”',
    '“Whatever you fight, you strengthen, and what you resist, persists.”',
    '“Death is a stripping away of all that is not you. The secret of life is to "die before you die" --- and find that there is no death.”',
    '“The primary cause of unhappiness is never the situation but thought about it. Be aware of the thoughts you are thinking. Separate them from the situation, which is always neutral. It is as it is.”',
    '“Worry pretends to be necessary but serves no useful purpose”',
    '“Being spiritual has nothing to do with what you believe and everything to do with your state of consciousness.”',
    '“At the deepest level of Being, you are one with all that is”',
    '"Thinking is only a small aspect of consciousness. Thought cannot exist without consciousness, but consciousness does not need thought”',
    '"With stillness comes the benediction of Peace.”',
    '“Once you have had a glimpse of awareness or Presence, you know it firsthand. It is no longer just a concept in your mind.”',
    '“That in you which recognizes madness as madness (even if it is your own) is sanity, is the arising awareness, is the end of insanity.”',
    '“Life has no opposite. The opposite of death is birth. Life is eternal.”',
    '“True Power is within, and it is available now.”',
    '“Things are as they are. Looking out into the universe at night, we make no comparisons between right and wrong stars, nor between well and badly arranged constellations.”',
    '"You are not separate from the whole. You are one with the sun, the earth, the air. You don’t have a life. You are life.”',
    '“Stress is caused by being “here” but wanting to be “there,” or being in the present but wanting to be in the future.”',
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
                '- Eckhart Tolle'.toUpperCase(),
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
