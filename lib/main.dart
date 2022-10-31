import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quiz_app/model/model.dart';
import 'package:quiz_app/screen/quiz_screen.dart';
import 'package:quiz_app/screen/score/score_screen.dart';

import 'welcome_screen.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'QuizApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: OneApp(),
    );
  }
}
