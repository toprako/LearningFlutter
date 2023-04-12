import 'package:flutter/material.dart';
import 'package:learning/core/RandomImageLearning.dart';

class ListTileLearningWidget extends StatelessWidget {
  const ListTileLearningWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: ListTile(
              onTap: (){
                  print("Tiklandı");
              },
              dense: true,
              contentPadding: EdgeInsets.zero,
              title: const RandomImageLearning(),
              subtitle: const Text('How do you use your card'),
              leading: const Icon(
                Icons.money
              ),
              trailing: Container(
                width: 20,
                child: Icon(
                  Icons.chevron_right
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
