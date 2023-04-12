import 'package:flutter/material.dart';

class ColumnRowLearning extends StatelessWidget {
  const ColumnRowLearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //4+2+2+2 = 10 olmalıdır
          //Flex Ekranı Oranlama işlemi
          Expanded(flex : 4 ,child: Row(
            children: [
              Expanded(child: Container(color: Colors.red)),
              Expanded(child: Container(color: Colors.green)),
              Expanded(child: Container(color: Colors.black)),
              Expanded(child: Container(color: Colors.pink)),
            ],
          )),
          Expanded(flex : 2 ,child: Container(color: Colors.green)),
          Expanded(flex : 2 ,child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("a"),
              Text("a2"),
              Text("a3"),
            ],
          )),
          Expanded(flex : 2 ,child: Container(color: Colors.purple)),
        ],
      ),
    );
  }
}

class ProjectContainerSizes{
  static const double cardHeight = 200;
  
}