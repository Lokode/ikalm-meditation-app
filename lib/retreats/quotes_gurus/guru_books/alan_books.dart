import 'package:flutter/material.dart';
import 'package:icalm/retreats/quotes_gurus/dalaiLama.dart';
import 'package:icalm/retreats/quotes_gurus/eckhart.dart';
import 'package:icalm/retreats/quotes_gurus/jiddu.dart';
import 'package:icalm/retreats/quotes_gurus/alan.dart';
import 'package:icalm/retreats/quotes_gurus/ramana.dart';
import 'package:icalm/retreats/quotes_gurus/thich.dart';
import 'package:icalm/retreats/retreats.dart';

class AlanBooksListview extends StatelessWidget {
  double _sizeBoxwidth = 2.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, ),
            child: Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                'Recommended books'.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: RetreatsListview().headingColor,
                  fontFamily: 'Roboto',
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: 190.0,
          child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
            SizedBox(
              width: _sizeBoxwidth,
              height: _sizeBoxwidth,
            ),
            BooksContainers('images/guru_books/bwya.jpg',  Eckhart()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            BooksContainers('images/guru_books/imow.jpg',  Alan()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            BooksContainers('images/guru_books/nmw.jpg',  Jiddu()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            BooksContainers('images/guru_books/thebook.jpg', Ramana()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            BooksContainers('images/guru_books/twoz.jpg', Thich()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            BooksContainers('images/guru_books/woi.jpg', DalaiLama()),
            SizedBox(
              width: _sizeBoxwidth,
            ),
            

          ]),
        ),
      ],
    );
  }
}

class BooksContainers extends StatelessWidget {
  BooksContainers(this.quotesBoxImage, this.routeToGuru);

//final Color quotesBoxColor;
  final String quotesBoxImage;
  //final String gurusCardTitle;
final Widget routeToGuru;
  double containerWidth = 100.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //cover
        Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 20, right: 20),
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
          //gradient overlay
                  child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 10,),
            child: Container(
              width: containerWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // gradient: LinearGradient(
                //   colors: [Color(0x88618B7D), Color(0x4DC1BA7D)],
                //   begin: Alignment.centerLeft,
                //   end: Alignment.centerRight,
                // ),
              ),
          //     child: Padding(
          //       padding: const EdgeInsets.all(10.0),
          //       child: Container(
          //         child: Center(
          //           child: Text(
          //             gurusCardTitle.toUpperCase(),
          //             style: TextStyle(
          //               fontSize: 15,
          //               fontWeight: FontWeight.bold,
          //               fontFamily: 'Roboto',
          //               color: Colors.white,
          //             ),
          //             textAlign: TextAlign.center,
          //           ),
          //         ),
          //       ),
          //     ),
            ),
          ),
        )
      ],
    );
  }
}
