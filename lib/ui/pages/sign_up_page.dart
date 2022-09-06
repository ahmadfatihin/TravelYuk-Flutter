import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Join Us and Get \nEasy Travel Around The World',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Full Name',
              style: blackTextStyle.copyWith(fontWeight: semiBold),
            ),
            const SizedBox(height: 6),
            TextFormField(
              cursorColor: kBlackColor,
              decoration: InputDecoration(
                hintStyle: greyTextStyle,
                hintText: 'Enter your full name',
              ),
            )
          ]),
        );
      }

      Widget emailInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Email Address',
                style: blackTextStyle.copyWith(fontWeight: semiBold)),
            const SizedBox(height: 6),
            TextFormField(
              cursorColor: kBlackColor,
              decoration: InputDecoration(
                hintStyle: greyTextStyle,
                hintText: 'testtravel@gmail.com',
              ),
            )
          ]),
        );
      }

      Widget passwordInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Password',
                style: blackTextStyle.copyWith(fontWeight: semiBold)),
            const SizedBox(height: 6),
            TextFormField(
              cursorColor: kBlackColor,
              obscureText: true,
              decoration: InputDecoration(
                hintStyle: greyTextStyle,
                hintText: 'Enter your password',
              ),
            )
          ]),
        );
      }

      Widget hobbyInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Hobby', style: blackTextStyle.copyWith(fontWeight: semiBold)),
            const SizedBox(height: 6),
            TextFormField(
              cursorColor: kBlackColor,
              obscureText: true,
              decoration: InputDecoration(
                hintStyle: greyTextStyle,
                hintText: 'Your hobby',
              ),
            )
          ]),
        );
      }

      Widget submitButton() {
        return Container(
          width: double.infinity,
          height: 50,
          margin: const EdgeInsets.only(bottom: 30),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
            ),
            child: Text(
              'Get Started',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ),
        );
      }

      return Container(
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Column(children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ]));
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          // create padding that symetric based on default Margin ini shared/theme.dart
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), inputSection()],
        ),
      ),
    );
  }
}
