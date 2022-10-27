import 'package:flutter/material.dart';

import '../components/body.dart';
class QuizScreen extends StatelessWidget {
  const QuizScreen({Key key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Flutter show the back automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
        FlatButton(onPressed: (){}, child: Text("Skip"))
      ],
      ),
      body: Body(),
    );
  }
}

