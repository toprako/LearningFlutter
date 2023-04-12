import 'package:flutter/material.dart';
import 'package:learning/demos/ColorDemosViewLearning.dart';

class ColorLifeCycleViewLearning extends StatefulWidget {
  const ColorLifeCycleViewLearning({Key? key}) : super(key: key);

  @override
  State<ColorLifeCycleViewLearning> createState() =>
      _ColorLifeCycleViewLearningState();
}

class _ColorLifeCycleViewLearningState extends State<ColorLifeCycleViewLearning> {
  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            setState(() {
              _backgroundColor = Colors.pink;
            });
          }, icon: const Icon(Icons.clear))
        ],
      ),
      body: Column(
        children: [
          const Spacer(),
          Expanded(child: ColorDemosViewLearning(initialColor: _backgroundColor)),
        ],
      ),
    );
  }
}
