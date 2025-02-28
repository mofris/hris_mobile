import 'package:flutter/material.dart';
import 'package:hris_mobile/theme.dart';

class OnboardingPage extends StatelessWidget {
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
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'HR Made Simple,\nWork Made \nSmarter.',
                style: whiteTextStyle.copyWith(fontSize: 32, fontWeight: bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Used by 2,000+ Professionals!',
                style: whiteTextStyle.copyWith(
                  fontWeight: light,
                ),
              ),
              Spacer(),
              Center(
                child: Container(
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
              SizedBox(
                height: 16,
              ),
              Center(
                child: Container(
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
              SizedBox(
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
