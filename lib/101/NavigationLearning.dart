import 'package:flutter/material.dart';
import 'package:learning/101/ImageLearning.dart';
import 'package:learning/101/NavigateDetailLearning.dart';

class NavihationLearningWidget extends StatefulWidget {
  const NavihationLearningWidget({Key? key}) : super(key: key);

  @override
  State<NavihationLearningWidget> createState() =>
      _NavihationLearningWidgetState();
}

class _NavihationLearningWidgetState extends State<NavihationLearningWidget>
    with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index,bool isAdd) {
    setState(() {
       isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return TextButton(
          onPressed: () async {
            final response = await navigateToWidget<bool>(
                context,  NavigateLearnDetail(isOkey: selectedItems.contains(index)));
            if (response != null && response is bool) {
              addSelected(index,response);
            }
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Placeholder(
              color: selectedItems.contains(index) ? Colors.green : Colors.red,
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigation_rounded),
        onPressed: () async {},
      ),
    );
  }
}

mixin NavigatorManager {
  Future<T?> navigateToWidget<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
          builder: (context) {
            return widget;
          },
          fullscreenDialog: true,
          settings: RouteSettings()),
    );
  }
}
