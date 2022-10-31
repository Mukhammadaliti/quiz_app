import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controler/question_controller.dart';

import '../components/body.dart';
class QuizScreen extends StatelessWidget {
  const QuizScreen({Key key});

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Flutter show the back automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
        FlatButton(onPressed: _controller.nextQuestion, child: Text("Skip"))
      ],
      ),
      body: Body(),
    );
  }
}

