import 'package:flutter/material.dart';

class ColorDemosViewLearning extends StatefulWidget {
  const ColorDemosViewLearning({Key? key, required this.initialColor}) : super(key: key);
  final Color? initialColor;
  @override
  State<ColorDemosViewLearning> createState() => _ColorDemosViewLearningState();
}

class _ColorDemosViewLearningState extends State<ColorDemosViewLearning> {
  Color? _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }
  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  void didUpdateWidget(covariant ColorDemosViewLearning oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(widget.initialColor != _backgroundColor){
      changeBackgroundColor(widget.initialColor ?? Colors.transparent);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar:
          BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.red), label: "Red"),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.yellow), label: "Yellow"),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.blue), label: "Yellow")
      ]),
    );
  }

  void _colorOnTap(value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    } else {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 25,
      height: 25,
    );
  }
}
