import 'package:flutter/material.dart';
import 'package:login_screen/screens/login_screen/animations/change_screen_animation.dart';
import 'package:login_screen/utils/helper_functions.dart';

import 'login_content.dart';

class TopText extends StatefulWidget {
  const TopText({Key? key}) : super(key: key);

  @override
  State<TopText> createState() => _TopTextState();
}

class _TopTextState extends State<TopText> {
  @override
  void initState() {
    ChangeScreenAnimation.topTextAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {});
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HelperFunctions.wrapWithAnimatedBuilder(
      animation: ChangeScreenAnimation.topTextAnimation,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Text(
          ChangeScreenAnimation.currentScreen == Screens.createAccount
              ? 'QIQUIZ'
              : 'QIQUIZ',
          style: const TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.w700,
            fontFamily: 'Monoton',
          ),
        ),
      ),
    );
  }
}
