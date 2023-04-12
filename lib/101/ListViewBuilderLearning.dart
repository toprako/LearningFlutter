import 'package:flutter/material.dart';

class ListViewBuilderLearning extends StatefulWidget {
  const ListViewBuilderLearning({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderLearning> createState() => _ListViewBuilderLearningState();
}

class _ListViewBuilderLearningState extends State<ListViewBuilderLearning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(itemBuilder: (context,index){
        return Column(
          children: [
            SizedBox(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            ),
          ],
        );
      }, separatorBuilder: (BuildContext context, int index) {
          return Divider();
      },
        itemCount: 15,
      ),
    );
  }
}
