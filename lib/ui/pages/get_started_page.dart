import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/get_started.png',
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: blackTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore new world with us and let\nyourself get an amazing experiences',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                    width: 220,
                    height: 55,
                    margin: EdgeInsets.only(top: 80, bottom: 35),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signUp');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
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
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
