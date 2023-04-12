import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: ProjectPadding.pagePaddingVertical,
            child: Container(
                color: Colors.white,
                height: 100,
                width: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
                padding: EdgeInsets.zero,
                color: Colors.white,
                height: 100,
                //width: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20) + const EdgeInsets.symmetric(vertical: 18),
            child: const Text("Mert")
          ),
        ],
      ),
    );
  }
}

class ProjectPadding{
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);

}
