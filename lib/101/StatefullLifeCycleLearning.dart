import 'package:flutter/material.dart';

class StatefullLifeCycleLearning extends StatefulWidget {
  const StatefullLifeCycleLearning({Key? key, required this.message})
      : super(key: key);
  final String message;

  @override
  State<StatefullLifeCycleLearning> createState() =>
      _StatefullLifeCycleLearningState();
}

class _StatefullLifeCycleLearningState extends State<StatefullLifeCycleLearning> {
  String _message = '';
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearning oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();

  }

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    if (_isOdd) {
      _message += " Çift";
    } else {
      _message += " Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.message.length.isOdd
            ? Text("Kelime Tek")
            : Text("Kelime Çift"),
      ),
      body: widget.message.length.isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
