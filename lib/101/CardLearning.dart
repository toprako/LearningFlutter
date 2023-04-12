
import 'package:flutter/material.dart';

class CardLaarningWidget extends StatelessWidget {
  const CardLaarningWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins.cardMargin,
            elevation: 100,
            color: Colors.white,
            child: SizedBox(
              height: 100,
              width: 300,
            ),
            shape: StadiumBorder(),
          ),
          Card(
            color: Theme.of(context).colorScheme.error,
            elevation: 100,
            child: SizedBox(
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectMargins{
static const cardMargin = EdgeInsets.all(10);

}