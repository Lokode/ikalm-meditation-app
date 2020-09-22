import 'package:flutter/material.dart';
import 'package:icalm/retreats/retreats.dart';

class DeepBreathing extends StatelessWidget {

  DeepBreathing (this.breathingBoxColor1, this.cardText);
  double _sizeBoxwidth = 2.0;
  final Color breathingBoxColor1; 
  final String cardText;
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: <Widget>[
        
        Container(
          margin: EdgeInsets.symmetric(vertical: 2.0),
          height: 5.0,
          child: Column(children: <Widget>[
            SizedBox(
              width: 1.0,
            ),
        
          ]),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
            child: Container(
              width: 370.0,
              height: 80.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: breathingBoxColor1,
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black12,
                  //     offset: Offset(1, 3),
                  //     blurRadius: 5.0,
                  //     spreadRadius: 2.0,
                  //   )
                  // ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: Text(cardText,
                    style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: RetreatsListview().headingColor,
                          fontFamily: 'Roboto',
                          fontSize: 15,
                    ),
                  ),),
            ),
            
          ),
        ),
        
      ],
    );
  }
}

// class BreathingContainer extends StatelessWidget {
//   BreathingContainer(this.breathingBoxColor1, this.cardText);
//   final Color breathingBoxColor1;
// final String cardText;
//   double containerWidth = 160.0;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         Container(
//           child: Padding(
//             padding: const EdgeInsets.only(bottom: 10),
//             child: Container(
//               width: 370.0,
//               height: 80.0,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: breathingBoxColor1,
//                   // boxShadow: [
//                   //   BoxShadow(
//                   //     color: Colors.black12,
//                   //     offset: Offset(1, 3),
//                   //     blurRadius: 5.0,
//                   //     spreadRadius: 2.0,
//                   //   )
//                   // ],
//                   ),
//             ),
//           ),
//         ),
//         Container(
//           child: Text(cardText)
//         )
//       ],
//     );
//   }
// }
