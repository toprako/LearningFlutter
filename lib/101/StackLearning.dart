import 'package:flutter/material.dart';

class StackLearningWidget extends StatelessWidget {
  const StackLearningWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              color: Colors.white,
              height: 100,
            ),
          ),
          Positioned(
              bottom: 0,
              width: 25,
              height: 120,
              child: Container(
                color: Colors.green,
              ),
          ),
        ],
      ),
    );
  }
}
