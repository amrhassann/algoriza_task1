import 'package:algoriza_task/view/screens/login_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {

  final introKey = GlobalKey<IntroductionScreenState>();

   OnBoardingPage({Key? key}) : super(key: key);

  void _onDone(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) =>  LoginScreen()),
    );
  }

  void _onSkip(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) =>  LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 17.0);

    const pageDecoration =  PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,

    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Lorem ipsum dolor sit amet" ,

          body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
          image: Image.asset('assets/images/onboarding1.png',
            width: 250,
           ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Lorem ipsum dolor sit amet" ,

          body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
          image: Image.asset('assets/images/onboarding2.png',
            width: 250,
           ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Lorem ipsum dolor sit amet" ,

          body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
          image: Image.asset('assets/images/onboarding3.png',
            width: 250,
           ),
          decoration: pageDecoration,
        ),

      ],
      onDone: () => _onDone(context),
      onSkip: () => _onSkip(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      // Display as right-to-left
      skip: const Text('Skip' ,
          style: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.grey)),
      next: const Icon(Icons.arrow_forward, color:  Colors.teal),
      done: const Text('Login' ,
          style: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.teal)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeColor:  Colors.teal,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
