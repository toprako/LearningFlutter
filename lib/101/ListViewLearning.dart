import 'package:flutter/material.dart';

class ListViewLearning extends StatefulWidget {
  const ListViewLearning({Key? key}) : super(key: key);

  @override
  State<ListViewLearning> createState() => _ListViewLearningState();
}

class _ListViewLearningState extends State<ListViewLearning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: [
          FittedBox(
            child: Text(
              "Merhaba",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Container(color: Colors.red, height: 300),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
                children: [
                  Container(color: Colors.green, width: 100),
                  Container(color: Colors.white, width: 100),
                  Container(color: Colors.green, width: 100),
                  Container(color: Colors.white, width: 100),
                  Container(color: Colors.green, width: 100),
                  Container(color: Colors.white, width: 100),
                ]),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.close_fullscreen))
        ],
      ),
    );
  }
}
