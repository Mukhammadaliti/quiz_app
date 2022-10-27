import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class OneApp extends StatefulWidget {
  const OneApp({Key key});

  @override
  State<OneApp> createState() => _OneAppState();
}

class _OneAppState extends State<OneApp> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
          Image.asset(
            "/20.jpg",
            
            fit: BoxFit.fill,
          ),
          SafeArea(child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 2), // 2/6 
                Text("Let's Play Quiz",
                style: Theme.of(context).textTheme.headline4.copyWith(
                   fontWeight: FontWeight.bold
                ),
                ),
                Text("Enter your informations below", ),
                Spacer(), // 1/6
                TextField(
                  decoration: InputDecoration(hintText: 'Full Name', 
                 filled: true,
                  fillColor:Color(0xffe2d7a7),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),),
                ),
                Spacer(), //1/6
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(kDefaultPadding * 0.75),//15
                  decoration: BoxDecoration(gradient: kPrimaryGradient, 
                  borderRadius: BorderRadius.all(Radius.circular(12),),),
                  child: Text("Let's Start Quiz",
                  style: Theme.of(context)
                  .textTheme
                  .button.copyWith(color: Colors.black),),
                  ),
                ), 
                Spacer(flex: 2), //it will take 2/6 spaces

              ],
            ),
          ))
        ],
      ),
    );
  }
}
