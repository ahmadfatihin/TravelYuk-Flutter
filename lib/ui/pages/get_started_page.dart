import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import '../../shared/theme.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class ItemData {
  final Color color;
  final String image;
  final String text1;
  final String text2;
  final String text3;

  ItemData(this.color, this.image, this.text1, this.text2, this.text3);
}

class _GetStartedPageState extends State<GetStartedPage> {
  int page = 0;
  late LiquidController liquidController;
  late UpdateType updateType;
  List<ItemData> data = [
    ItemData(
        Colors.blue, "assets/destination1.png", "Hi", "It's Me", "Sahdeep"),
    ItemData(Colors.deepPurpleAccent, "assets/destination2.png", "Take a",
        "Look At", "Liquid Swipe"),
    ItemData(Colors.green, "assets/destination3.png", "Liked?", "Fork!",
        "Give Star!"),
    ItemData(Colors.yellow, "assets/destination4.png", "Can be", "Used for",
        "Onboarding design"),
  ];
  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/get_started.png',
                ),
              ),
            ),
          ),
          LiquidSwipe.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: data[index].color,
                      image: DecorationImage(
                        colorFilter: index != 3
                            ? ColorFilter.mode(Colors.black.withOpacity(0.05),
                                BlendMode.dstATop)
                            : null,
                        fit: BoxFit.cover,
                        image: const AssetImage(
                          'assets/get_started.png',
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset(
                          data[index].image,
                          height: 400,
                          fit: BoxFit.contain,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              data[index].text1,
                            ),
                            Text(
                              data[index].text2,
                            ),
                            Text(
                              data[index].text3,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            positionSlideIcon: 0.8,
            // slideIconWidget: const Icon(Icons.arrow_back_ios),
            onPageChangeCallback: pageChangeCallback,
            waveType: WaveType.liquidReveal,
            liquidController: liquidController,
            fullTransitionValue: 880,
            enableSideReveal: true,
            enableLoop: true,
            ignoreUserGestureWhileAnimating: true,
          ),
          // LiquidSwipe(
          //   pages: [
          //     Container(
          //       child: Text("TEst"),
          //     ),
          //     Center(
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Text(
          //             'Fly Like a Bird',
          //             style: blackTextStyle.copyWith(
          //               fontSize: 32,
          //               fontWeight: semiBold,
          //             ),
          //           ),
          //           const SizedBox(
          //             height: 10,
          //           ),
          //           Text(
          //             'Explore new world with us and let\nyourself get an amazing experiences',
          //             style: blackTextStyle.copyWith(
          //               fontSize: 16,
          //               fontWeight: light,
          //             ),
          //             textAlign: TextAlign.center,
          //           ),
          //           Container(
          //               width: 220,
          //               height: 55,
          //               margin: const EdgeInsets.only(top: 80, bottom: 35),
          //               child: TextButton(
          //                 onPressed: () {
          //                   Navigator.pushNamed(context, '/signUp');
          //                 },
          //                 style: TextButton.styleFrom(
          //                   backgroundColor: Colors.blueAccent,
          //                   shape: RoundedRectangleBorder(
          //                     borderRadius:
          //                         BorderRadius.circular(defaultRadius),
          //                   ),
          //                 ),
          //                 child: Text(
          //                   'Get Started',
          //                   style: whiteTextStyle.copyWith(
          //                     fontSize: 16,
          //                     fontWeight: medium,
          //                   ),
          //                 ),
          //               )),
          //           Container(
          //             margin: EdgeInsets.symmetric(vertical: 10),
          //             child: DotsIndicator(
          //               onTap: (position) {
          //                 setState(() {
          //                   liquidController.animateToPage(
          //                       page: liquidController.currentPage + 1 >
          //                               data.length - 1
          //                           ? 0
          //                           : liquidController.currentPage + 1);
          //                 });
          //               },
          //               dotsCount: data.length,
          //               position: liquidController.currentPage.toDouble(),
          //               decorator: DotsDecorator(
          //                 activeSize: const Size(16, 8),
          //                 spacing: EdgeInsets.all(5),
          //                 activeShape: RoundedRectangleBorder(
          //                     borderRadius: BorderRadius.circular(5.0)),
          //                 shape: RoundedRectangleBorder(
          //                     borderRadius: BorderRadius.circular(5.0)),
          //                 color: Colors.orange, // Inactive color
          //                 activeColor: Colors.amber,
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          //   positionSlideIcon: 0.8,
          //   slideIconWidget: Icon(Icons.arrow_back_ios),
          //   waveType: WaveType.liquidReveal,
          //   liquidController: liquidController,
          //   fullTransitionValue: 880,
          //   enableLoop: true,
          //   ignoreUserGestureWhileAnimating: true,
          // ),
        ],
      ),
    );
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }
}
