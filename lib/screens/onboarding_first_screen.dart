import 'package:flutter/material.dart';
import 'package:mobile_ui_kit/screens/onboarding_second_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingFirstScreen extends StatelessWidget {
  const OnboardingFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF0E164D),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/splash_one.png',
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height: 224,
            width: 323,
            decoration: const BoxDecoration(
              color: Color(0xFF17288E),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(70),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 32, top: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AnimatedSmoothIndicator(
                    activeIndex: 1,
                    count: 3,
                    curve: Curves.easeInOut,
                    effect: ExpandingDotsEffect(
                      spacing: 5,
                      dotWidth: 16.0,
                      dotHeight: 8.0,
                      strokeWidth: 1.5,
                      expansionFactor: 2.2,
                      dotColor: Color(0xFFFDD590),
                      activeDotColor: Color(0xFFFFB129),
                    ), // your preferred effect
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Transfer That Is Safe',
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'You have nothing to be scared \nabout, we got you covered.',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const OnboardingSecondScreen();
                      }));
                    },
                    child: Container(
                      height: 50,
                      width: 145,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('Start banking',
                            style: Theme.of(context).textTheme.headlineMedium),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
