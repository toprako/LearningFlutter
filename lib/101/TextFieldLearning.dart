import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLearningWidget extends StatefulWidget {
  const TextFieldLearningWidget({Key? key}) : super(key: key);

  @override
  State<TextFieldLearningWidget> createState() =>
      _TextFieldLearningWidgetState();
}

class _TextFieldLearningWidgetState extends State<TextFieldLearningWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
          return AnimatedContainer(
            duration: Duration(microseconds: 100),
            key: UniqueKey(),
            height: 10,
            width: 40,
            color: Colors.green[100 * ((currentLength ?? 0) ~/ 2)],
          );
        },
        keyboardType: TextInputType.emailAddress,
        autofillHints: const [AutofillHints.email],
        inputFormatters: [TextProjectInputFormater()._formatter],
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.mail),
            border: OutlineInputBorder(),
            hintText: "Mail",
            label: Text("Mail")),
      ),
    );
  }
}

class TextProjectInputFormater  {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if(oldValue.text == "a"){
      return newValue;
    }
    return oldValue;
  });
}
