import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:introductionscreen/home.dart';

class IntroScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyIntroScreenState();
}

class _MyIntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 19.0,
        color: Colors.black,
      ),
      imagePadding: EdgeInsets.all(20),
      boxDecoration: BoxDecoration(
        color: Colors.white,
      ),
    );

    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Wanna Be A Mobile Developer?',
          body: 'Get A Full Course Now In Mobile Development!',
          image: introImage('assets/images/mobile.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Do You Want To Be A Professional Programemr?!',
          body:
              'Get A Full Course In The Field You Want To Learn In Programming Now !',
          image: introImage('assets/images/programmer.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Do You Wanna Start Working As A Freelancer?!!',
          body: 'Get A Big Learning Course To Become A Good Freelancer !',
          image: introImage('assets/images/freelancer.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Do You Wanna Be Proud Of Your Codes And Of Your Codes?!',
          body:
              'With Our Courses You Will Learn How To Create Code And Programs That Makes You Proud And Happy Too!',
          image: introImage('assets/images/proud.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => goHomePage(context),
      onSkip: () => goHomePage(context),
      showSkipButton: true,
      showDoneButton: true,
      nextFlex: 0,
      skip: const Text(
        "Skip",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.black,
      ),
      done: const Text(
        "Done",
        style: TextStyle(color: Colors.black),
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.grey,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
        activeColor: Colors.black,
      ),
    );
  }
}

void goHomePage(context) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) {
    return const MyHomePage();
  }), (Route<dynamic> route) => false);
}

Widget introImage(String assetName) {
  return Align(
    child: Image.asset(
      '$assetName',
      width: 300,
    ),
    alignment: Alignment.bottomCenter,
  );
}
