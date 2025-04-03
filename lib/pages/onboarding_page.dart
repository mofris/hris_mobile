import 'package:flutter/material.dart';
import 'package:hris_mobile/theme.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Image.asset(
        'assets/onboarding1.png',
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        fit: BoxFit.fill,
      );
    }

    Widget content() {
      return SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                'CBI Mobile Apps,\nWork Made \nSmarter.',
                style: whiteTextStyle.copyWith(fontSize: 32, fontWeight: bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Used by 2,000+ Professionals!',
                style: whiteTextStyle.copyWith(
                  fontWeight: light,
                ),
              ),
              const Spacer(),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 45,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(66),
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: purpleTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 45,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-in');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: transparentColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(66),
                        side: BorderSide(
                          color: whiteColor,
                        ),
                      ),
                    ),
                    child: Text(
                      'Sign In',
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          backgroundImage(),
          content(),
        ],
      ),
    );
  }
}
