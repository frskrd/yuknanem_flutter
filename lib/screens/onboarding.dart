import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:yuknanem/screens/register.dart';
import 'package:yuknanem/utilities/constant.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: IntroductionScreen(
        globalBackgroundColor: secondaryColor,
        pages: [
          PageViewModel(
            title: 'Easy to Learn',
            image: Image.asset('assets/images/onboarding_one.png'),
            body:
                'Our apps is easily read and very useful  for you. The database of plant that we have, can make you identify your plant so easily.',
            decoration: pageDecoration(),
          ),
          PageViewModel(
            title: 'Start Grow Your Plant',
            image: Image.asset('assets/images/onboarding_two.png'),
            body:
                'Your plant is just like your partner. Give them what they need. Watering them, put them in enough of direct sunlight. Don’t be greedy and selfish.',
            decoration: pageDecoration(),
          ),
          PageViewModel(
            title: 'Article Ready',
            image: Image.asset('assets/images/onboarding_three.png'),
            body:
                'Our community is the real hero. They help us to improve this app by sharing they knowledge about plant. You can be the hero to by join the community.',
            decoration: pageDecoration(),
          ),
        ],
        showBackButton: true,
        showNextButton: true,
        showDoneButton: true,
        back: Text(
          'Back',
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        next: Text(
          'Next',
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        done: Text(
          'Done',
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        onDone: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Register(),
              ));
        },
        dotsDecorator: DotsDecorator(
          activeColor: primaryColor,
        ),
      ),
    );
  }

  PageDecoration pageDecoration() {
    return const PageDecoration(
      bodyFlex: 2,
      imageFlex: 2,
      contentMargin: EdgeInsets.only(
        top: 50,
        left: 30,
        right: 30,
      ),
      imagePadding: EdgeInsets.all(30),
    );
  }
}
