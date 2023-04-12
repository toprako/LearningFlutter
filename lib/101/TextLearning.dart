import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                  ('Test Ekran Mesaj' * 10),
                  maxLines: 2,//Maximum 2 Satır olacak Diyoruz
                  overflow: TextOverflow.ellipsis,//2 Satırdan Fazla Olursa 3 nokta koymaktadır.
                  textAlign: TextAlign.left,
                  textScaleFactor: .8,//Otomatik olarak texti scale etmektedir
                  style: Theme.of(context).textTheme.headline5,//Kelime Boşluklarını ayarlama
            ),
            Text(
              ('Test Ekran Mesaj 2' * 10),
              maxLines: 2,//Maximum 2 Satır olacak Diyoruz
              overflow: TextOverflow.ellipsis,//2 Satırdan Fazla Olursa 3 nokta koymaktadır.
              textAlign: TextAlign.left,
              textScaleFactor: .8,//Otomatik olarak texti scale etmektedir
              style: ProjectStyles.welcomeStyle//Kelime Boşluklarını ayarlama
            ),
          ],
        ),
      )
    );
  }
}

class ProjectStyles{
  static TextStyle welcomeStyle = const TextStyle(
   wordSpacing: 2,
   decoration: TextDecoration.underline,
   fontStyle: FontStyle.italic,
   letterSpacing: 2,
   color: Colors.blueAccent,
   fontSize: 16,
   fontWeight: FontWeight.w600
  );
}