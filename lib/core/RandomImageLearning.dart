import 'package:flutter/material.dart';

class RandomImageLearning extends StatelessWidget {
  const RandomImageLearning({Key? key, this.height = 100}) : super(key: key);
  final imageUrl = "https://www.tedkayseri.k12.tr/wp-content/uploads/2013/12/IMG_4468-Kopyala-Kopya.jpg";
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl,height: height,fit: BoxFit.cover);
  }
}
