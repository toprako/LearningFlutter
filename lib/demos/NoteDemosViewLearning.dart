import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning/101/ImageLearning.dart';

class NoteDemos1 extends StatelessWidget {
  const NoteDemos1({Key? key}) : super(key: key);
  final _Title = "Create Your First Data";
  final _Description = "Add a Note";
  final _createANote = "Create A Note";
  final _importNotes = "Import Notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark,),
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleWithBook),
            _TitleWidget(Title: _Title),
            Padding(
              padding: PaddingItems.verticalPadding ,
              child: SubTitleWidget(title: _Description * 10,textAlign: TextAlign.center),
            ),
            const Spacer(),
            CreateButtonWidget(createANote: _createANote),
            TextButton(
                onPressed: (){},
                child: Text(_importNotes),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class CreateButtonWidget extends StatelessWidget {
  const CreateButtonWidget({
    super.key,
    required String createANote,
  }) : _createANote = createANote;

  final String _createANote;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){},
        child: SizedBox(
            height: ButtonStyle.buttonNormalHeight,
            child: Center(child: Text(_createANote,style: Theme.of(context).textTheme.headline6,)),
        ),
    );
  }
}

class SubTitleWidget extends StatelessWidget {
  const SubTitleWidget({
    super.key, this.textAlign, required this.title,
  });
  final TextAlign? textAlign;
  final title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title ,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    super.key,
    required this.Title,
  });

  final String Title;

  @override
  Widget build(BuildContext context) {
    return Text(
      Title,
      style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black,fontWeight: FontWeight.w600),
    );
  }
}

class PaddingItems{
  static const EdgeInsets horizontalPadding =  EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding =  EdgeInsets.symmetric(vertical: 20);
}

class ButtonStyle{
  static const double buttonNormalHeight = 50;

}