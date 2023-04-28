import 'dart:async';
import 'package:flutter/material.dart';
import '../../util/utils.dart';
import '../home/home.dart';
import '../widgets/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
            (route) => false));

    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * 0.80,
            height: size.height * 0.45,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(40),
              ),
              color: HexColor(
                '#FCCD28',
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: size.width * 0.20,
              ),
              Container(
                  width: size.width * 0.80,
                  height: size.height * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                    ),
                    color: HexColor(
                      '#7EB19F',
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: TextTitle(
                        title: "LET'S GO",
                        ls: 0,
                        fontwght: FontWeight.w900,
                        color: Colors.white,
                        fontsz: 32,
                      ),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
