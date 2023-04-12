
import 'package:flutter/material.dart';

class StatelessLearnView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         children:  const [
           TitleTextWidget(Title: "Mert"),
           TitleTextWidget(Title: "Mert2"),
           TitleTextWidget(Title: "Mert3"),
           TitleTextWidget(Title: "Mert4"),
           TitleTextWidget(Title: "Mert5"),
           _CustomContainer(),
         ],
      ),
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key,this.Title}) : super(key: key);
  final String? Title;
  @override
  Widget build(BuildContext context) {
    return Text(
      "$Title",
      style: Theme.of(context).textTheme.headline5,
    );
  }
}
