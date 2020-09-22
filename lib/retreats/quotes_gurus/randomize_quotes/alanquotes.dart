import 'package:flutter/material.dart';
import 'dart:math';

class AlansRandomQuotes extends StatefulWidget {
  AlansRandomQuotes({Key key}) : super(key: key);

  @override
  _AlansRandomQuotesState createState() => _AlansRandomQuotesState();
}

class _AlansRandomQuotesState extends State<AlansRandomQuotes> {
  static List randomquotes = [
    '“There will always be suffering. But we must not suffer over the suffering.”',
    '“Man suffers only because he takes seriously what the gods made for fun.”',
    '"This is the real secret of life -- to be completely engaged with what you are doing in the here and now. And instead of calling it work, realize it is play.”',
    '"Muddy water is best cleared by leaving it alone."',
    '“The only way to make sense out of change is to plunge into it, move with it, and join the dance.”',
    '“We cannot be more sensitive to pleasure without being more sensitive to pain.”',
    '“Life exists only at this very moment, and in this moment it is infinite and eternal, for the present moment is infinitely small; before we can measure it, it has gone, and yet it exists forever….”',
    '“Meditation is the discovery that the point of life is always arrived at in the immediate moment.”',
    '“You didn’t come into this world. You came out of it, like a wave from the ocean. You are not a stranger here.”',
    '“The more we struggle for life (as pleasure), the more we are actually killing what we love.”',
    '“Everyone has love, but it can only come out when he is convinced of the impossibility and the frustration of trying to love himself.”',
    '“Tomorrow and plans for tomorrow can have no significance at all unless you are in full contact with the reality of the present, since it is in the present and only in the present that you live. There is no other reality than present reality, so that, even if one were to live for endless ages, to live for the future would be to miss the point everlastingly.”',
    '“You are a function of what the whole universe is doing in the same way that a wave is a function of what the whole ocean is doing.”',
    '“Zen does not confuse spirituality with thinking about God while one is peeling potatoes. Zen spirituality is just to peel the potatoes.”',
    '“The more a thing tends to be permanent, the more it tends to be lifeless.”',
    '“Only words and conventions can isolate us from the entirely undefinable something which is everything.”',
    '“Problems that remain persistently insoluble should always be suspected as questions asked in the wrong way”',
    '“What I am really saying is that you don’t need to do anything, because if you see yourself in the correct way, you are all as much extraordinary phenomenon of nature as trees, clouds, the patterns in running water, the flickering of fire, the arrangement of the stars, and the form of a galaxy. You are all just like that, and there is nothing wrong with you at all.”',
    '"We seldom realize, for example, that our most private thoughts and emotions are not actually our own. For we think in terms of languages and images which we did not invent, but which were given to us by our society.”',
    '"But I’ll tell you what hermits realize. If you go off into a far, far forest and get very quiet, you’ll come to understand that you’re connected with everything.”',
    '“If you say that getting the money is the most important thing, you’ll spend your life completely wasting your time. You’ll be doing things you don’t like doing in order to go on living, that is to go on doing things you don’t like doing, which is stupid.”',
    '“To have faith is to trust yourself to the water. When you swim you don’t grab hold of the water, because if you do you will sink and drown. Instead you relax, and float.”',
    '“Philosophy is man’s expression of curiosity about everything and his attempt to make sense of the world primarily through his intellect.”',
    '“Try to imagine what it will be like to go to sleep and never wake up… now try to imagine what it was like to wake up having never gone to sleep.”',
    '“Things are as they are. Looking out into the universe at night, we make no comparisons between right and wrong stars, nor between well and badly arranged constellations.”',
    '"A scholar tries to learn something everyday; a student of Buddhism tries to unlearn something daily.”',
    '“When we attempt to exercise power or control over someone else, we cannot avoid giving that person the very same power or control over us.”',
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
                '- Alan Watts'.toUpperCase(),
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
