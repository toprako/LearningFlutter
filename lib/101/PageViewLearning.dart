import 'package:flutter/material.dart';
import 'package:learning/101/ImageLearning.dart';

class PageViewLearning extends StatefulWidget {
  PageViewLearning({Key? key}) : super(key: key);

  @override
  State<PageViewLearning> createState() => _PageViewLearningState();
}

class _PageViewLearningState extends State<PageViewLearning> {
  final _pageController = PageController(viewportFraction: 0.7);
  int _currentPageIndex = 0;

  void _updatePageIndex(int index){
    setState(() {
      _currentPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(_currentPageIndex.toString()),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: _DurationUtility._durationLow,
                  curve: Curves.decelerate);
            },
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                  duration: _DurationUtility._durationLow,
                  curve: Curves.decelerate);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        padEnds: false,
        onPageChanged: _updatePageIndex,
        controller: _pageController,
        children: [
          ImageLearningWidget(),
          Container(color: Colors.green),
          Container(color: Colors.black),
          Container(color: Colors.purple),
          Container(color: Colors.green),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = const Duration(seconds: 1);
}
