import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
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
      Widget emailInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Full Name'),
            SizedBox(height: 6),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter your full name',
              ),
            )
          ]),
        );
      }

      return Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Column(children: [emailInput()]));
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
