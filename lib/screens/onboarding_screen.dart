import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen(
      {super.key,
        required this.image,
        required this.boldText,
        required this.smallText,
        required this.buttonText,
        required this.onTap});

  final String image;
  final String boldText;
  final String smallText;
  final String buttonText;
  final Function() onTap;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: SvgPicture.asset(image),
        ),
        Expanded(
          child: Container(
            color: Color(0xFFFCB4B4),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  boldText,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    smallText,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(color: Colors.black),
                    child: Center(
                      child: Text(
                        buttonText,
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
