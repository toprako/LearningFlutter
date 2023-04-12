import 'package:flutter/material.dart';
import 'package:learning/core/RandomImageLearning.dart';

class StackDemoViewLearning extends StatelessWidget {
  const StackDemoViewLearning({Key? key}) : super(key: key);
  final double _cardHeight = 100.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 4, child: Stack(
          alignment: Alignment.center,
          children: [
           Positioned.fill(child:RandomImageLearning(),bottom: 25),
           Positioned(
             height: _cardHeight,
             bottom: 0,
             width: 200,
             child: Card(
               color: Colors.white,
               shape: RoundedRectangleBorder(),
             ),
           )
         ],
        )),
        Spacer(flex: 6),
      ],
    );
  }
}
