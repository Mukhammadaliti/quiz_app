import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/components/question_card.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controler/question_controller.dart';
import 'package:quiz_app/model/model.dart';

import '../screen/progres_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // So that we have access our controller
    QuestionController _questionController = Get.put(QuestionController());

    return Stack(
      children: [
        Image.asset(
          '/22.jpg',
          fit: BoxFit.fill,
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text.rich(
                  TextSpan(
                    text: "Question 1",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: kSedondaryColor),
                    children: [
                      TextSpan(
                        text: "/10",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(color: kSedondaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(thickness: 2.0),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: PageView.builder(
                  // Block wsipe to qn
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  itemCount: _questionController.questions.length,
                  itemBuilder: ((context, index) => QuestionCard(
                        question: _questionController.questions[index],
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
