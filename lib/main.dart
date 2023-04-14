import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning/101/AppBarLearning.dart';
import 'package:learning/101/ButtonLearning.dart';
import 'package:learning/101/CardLearning.dart';
import 'package:learning/101/ColumnRowLearning.dart';
import 'package:learning/101/CustomWidgetLearning.dart';
import 'package:learning/101/ImageLearning.dart';
import 'package:learning/101/Ind%C4%B1catorLearning.dart';
import 'package:learning/101/ListTileLearning.dart';
import 'package:learning/101/ListViewBuilderLearning.dart';
import 'package:learning/101/ListViewLearning.dart';
import 'package:learning/101/NavigationLearning.dart';
import 'package:learning/101/PageViewLearning.dart';
import 'package:learning/101/ScaffoldLearning.dart';
import 'package:learning/101/StackLearning.dart';
import 'package:learning/101/StatefullLearning.dart';
import 'package:learning/101/StatefullLifeCycleLearning.dart';
import 'package:learning/101/StatelessLearning.dart';
import 'package:learning/101/TextFieldLearning.dart';
import 'package:learning/202/TabLearningWidget.dart';
import 'package:learning/demos/ColorDemosViewLearning.dart';
import 'package:learning/demos/ColorLifeCycleViewLearning.dart';
import 'package:learning/demos/MyCollectionDemos.dart';
import 'package:learning/demos/StackDemoViewLearning.dart';
import 'package:learning/service/ServiceLearningView.dart';
import 'package:learning/service/ServicePostLearningView.dart';

import '101/ContainerSizedBoxLearning.dart';
import '101/PaddingLearning.dart';
import 'demos/NoteDemosViewLearning.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: Colors.red
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.red,
          elevation: 0,
        ),
      ),
      home: ServicePostLearning(),
      debugShowCheckedModeBanner: false,
    );
  }
}

