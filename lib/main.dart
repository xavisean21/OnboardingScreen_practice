import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eloquente_women/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController();

  final List _images = [
    [
      'assets/images/undraw_woman_re_afr8.svg',
      'Order in the mobile app',
      "Choose clothes online from home and place an order. Get bonuses!",
      "Next"
    ],
    [
      'assets/images/undraw_mindfulness_re_mmj6.svg',
      'Try on the clothes in the store',
      "If the clothes does not fit you, we will refund the money.",
      "Next"
    ],
    [
      'assets/images/undraw_engineering_team_a7n2.svg',
      'Wear the clothes with pleasure',
      "We have clothes for every season and for every taste",
      "Get Started!"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView.builder(
              controller: controller,
              itemCount: _images.length,
              itemBuilder: (context, index) {
                return OnboardingScreen(
                  image: _images[index][0],
                  boldText: _images[index][1],
                  smallText: _images[index][2],
                  buttonText: _images[index][3],
                  onTap: () {
                    controller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                );
              })),
    );
  }
}
