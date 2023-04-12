import 'package:flutter/material.dart';

class NavigateLearnDetail extends StatefulWidget {
  const NavigateLearnDetail({Key? key, this.isOkey = false}) : super(key: key);
  final bool isOkey;
  @override
  State<NavigateLearnDetail> createState() => _NavigateLearnDetailState();
}

class _NavigateLearnDetailState extends State<NavigateLearnDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(!widget.isOkey);
            },
            icon: Icon(Icons.check,
                color: widget.isOkey ? Colors.red : Colors.green),
            label: widget.isOkey ? const Text("Red") : const Text("Onayla")),
      ),
    );
  }
}
