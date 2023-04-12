import 'package:flutter/material.dart';
import 'package:learning/language/LanguageItems.dart';

class StatefullLearningWidget extends StatefulWidget {
  const StatefullLearningWidget({Key? key}) : super(key: key);

  @override
  State<StatefullLearningWidget> createState() =>
      _StatefullLearningWidgetState();
}

class _StatefullLearningWidgetState extends State<StatefullLearningWidget> {
  int _countValue = 0;

  void _updateCounter(bool isIncrement){
    setState(() {
      _countValue = !isIncrement ? _countValue -= 1 : _countValue += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItems.welcomeTitle)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Center(
        child: Text(
          _countValue.toString(),
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }

  FloatingActionButton incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
