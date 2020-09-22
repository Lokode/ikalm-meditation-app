import 'package:flutter/material.dart';
import 'package:icalm/retreats/quotes_gurus/dalaiLama.dart';
import 'package:icalm/retreats/quotes_gurus/eckhart.dart';
import 'package:icalm/retreats/quotes_gurus/jiddu.dart';
import 'package:icalm/retreats/quotes_gurus/alan.dart';
import 'package:icalm/retreats/quotes_gurus/deepak.dart';
import 'package:icalm/retreats/quotes_gurus/morning.dart';
import 'package:icalm/retreats/quotes_gurus/neville.dart';
import 'package:icalm/retreats/quotes_gurus/papaji.dart';
import 'package:icalm/retreats/quotes_gurus/ramakrishna.dart';
import 'package:icalm/retreats/quotes_gurus/ramana.dart';
import 'package:icalm/retreats/quotes_gurus/sadguru.dart';
import 'package:icalm/retreats/quotes_gurus/thich.dart';
import 'package:icalm/retreats/quotes_gurus/vivekananda.dart';
import 'package:icalm/retreats/retreats.dart';

class QuotesListview extends StatelessWidget {
  double _sizeBoxwidth = 2.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 10, 0),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Text(
                'Wisdom',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: RetreatsListview().headingColor,
                  fontFamily: 'Roboto',
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: 100.0,
          child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
            SizedBox(
              width: _sizeBoxwidth,
              height: _sizeBoxwidth,
            ),
            Containermini('images/et1.jpg', 'Eckhart Tolle', Eckhart()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            Containermini('images/guru_images/aw2.png', 'Alan Watts', Alan()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            Containermini('images/jk1.jpg', 'Jiddu Krishnamurthi', Jiddu()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            Containermini('images/rm1.jpg', 'Ramana Maharshi', Ramana()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            Containermini('images/tnh1.jpg', 'Thich Nhat Hanh', Thich()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            Containermini('images/dl.jpg', 'Dalai Lama', DalaiLama()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            Containermini('images/rk.jpg', 'Sri Ramakrishna', Ramakrishna()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            Containermini('images/moo.jpg', 'Mooji', Mooji()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            Containermini('images/ppj.jpg', 'Papaji', Papaji()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            Containermini('images/dc.jpg', 'Deepak Chopra', DeepakChopra()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            Containermini('images/vv.jpg', 'Swami Vivekananda', Vivekananda()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            Containermini('images/jv.jpg', 'Sadguru', Sadguru()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            Containermini('images/ng.jpg', 'Neville Goddard', Neville()),
            SizedBox(
              width: _sizeBoxwidth,
            ),

          ]),
        ),
      ],
    );
  }
}

class Containermini extends StatelessWidget {
  Containermini(this.quotesBoxImage, this.gurusCardTitle, this.routeToGuru);

//final Color quotesBoxColor;
  final String quotesBoxImage;
  final String gurusCardTitle;
final Widget routeToGuru;
  double containerWidth = 160.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 0, right: 10),
              child: Container(
                width: containerWidth,
                decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              quotesBoxImage,
            ),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
        //color: quotesBoxColor,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black12,
        //     offset: Offset(1, 2),
        //     blurRadius: 5.0,
        //     spreadRadius: 2.0,
        //   )
        // ],
                ),
              ),
            ),
          ),
        GestureDetector(
          onTap: (){
            Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => routeToGuru,
                  ),
            );
          },
                  child: Padding(
            padding: const EdgeInsets.only(left: 0,),
            child: Container(
              width: containerWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [Color(0x9C0C0E13), Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:60.0),
                child: Container(
                  child: Center(
                    child: Text(
                      gurusCardTitle,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
